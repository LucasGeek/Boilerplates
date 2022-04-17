import 'dart:convert';

import 'package:get/utils.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';

import '../../data/http/http.dart';

class HttpAdapter implements HttpClient {
  final Client client;

  HttpAdapter(this.client);

  @override
  Future<dynamic> request({
    required String url,
    required HttpMethod method,
    HttpType type = HttpType.none,
    Map? body,
    Map? headers,
    List<HttpMedia>? files,
  }) async {
    Response response = Response('', 500);

    Future<Response>? futureResponse;
    if (method == HttpMethod.post || method == HttpMethod.put) {
      if ((type == HttpType.none) || (files == null && body == null)) {
        throw HttpError.invalidType;
      }

      switch (type) {
        case HttpType.json:
          return _handleJson(
            futureResponse,
            response,
            method,
            type,
            headers,
            url,
            body,
          );
        case HttpType.form:
          return _handleForm(
            futureResponse,
            response,
            method,
            type,
            headers,
            url,
            body,
          );
        case HttpType.multipart:
          return _handleMultipart(
            futureResponse,
            files,
            response,
            method,
            type,
            headers,
            url,
            body,
          );
        case HttpType.none:
        default:
          throw HttpError.invalidType;
      }
    } else if (method == HttpMethod.get || method == HttpMethod.delete) {
      if ((type != HttpType.none) || (files != null || body != null)) {
        throw HttpError.invalidType;
      }

      try {
        if (method == HttpMethod.get) {
          futureResponse = client.get(
            Uri.parse(url),
            headers: headers?.cast<String, String>(),
          );
        } else if (method == HttpMethod.delete) {
          futureResponse = client.delete(
            Uri.parse(url),
            headers: headers?.cast<String, String>(),
          );
        }

        response = await futureResponse!.timeout(const Duration(seconds: 30));
      } catch (error) {
        throw HttpError.serverError;
      }

      return _handleResponse(response);
    }

    return _handleResponse(response);
  }

  Future<dynamic> _handleJson(
    Future<Response>? futureResponse,
    Response response,
    HttpMethod method,
    HttpType type,
    Map? headers,
    String url,
    Map? body,
  ) async {
    try {
      final defaultHeaders = headers?.cast<String, String>() ?? {};
      final jsonBody = body != null ? jsonEncode(body) : null;

      if (method == HttpMethod.post) {
        futureResponse = client.post(
          Uri.parse(url),
          headers: defaultHeaders,
          body: jsonBody,
        );
      } else if (method == HttpMethod.put) {
        futureResponse = client.put(
          Uri.parse(url),
          headers: defaultHeaders,
          body: jsonBody,
        );
      }

      response = await futureResponse!.timeout(const Duration(seconds: 30));
    } catch (error) {
      throw HttpError.serverError;
    }

    return _handleResponse(response);
  }

  Future<dynamic> _handleMultipart(
    Future<Response>? futureResponse,
    List<HttpMedia>? files,
    Response response,
    HttpMethod method,
    HttpType type,
    Map? headers,
    String url,
    Map? body,
  ) async {
    try {
      final List<MultipartFile> _files = await Future.wait(
        files!.map(
          (file) async {
            if (file.filePath != null && file.filePath!.isNotEmpty) {
              final String path = file.filePath!;
              final MediaType mimeType = _varifyMediaType(file.fileName);

              return await MultipartFile.fromPath(
                file.parameter,
                path,
                contentType: mimeType,
                filename: "${mimeType.type}.${mimeType.subtype}",
              );
            } else {
              final List<int> code = file.codeBytes!;
              final MediaType mimeType = _varifyMediaType(file.fileName);

              return MultipartFile.fromBytes(
                file.parameter,
                code,
                contentType: mimeType,
                filename: "${mimeType.type}.${mimeType.subtype}",
              );
            }
          },
        ),
      );

      MultipartRequest multipart = MultipartRequest(
        method.toShortString(),
        Uri.parse(url),
      );

      if (body != null) {
        multipart.fields.addAll(body.cast<String, String>());
      }

      if (files.isNotEmpty && !_files.contains(null)) {
        multipart.files.addAll(_files);
      }

      final streamedResponse = await multipart.send();
      futureResponse = Response.fromStream(streamedResponse);
      response = await futureResponse.timeout(const Duration(seconds: 30));
    } catch (error) {
      throw HttpError.serverError;
    }

    return _handleResponse(response);
  }

  Future<dynamic> _handleForm(
    Future<Response>? futureResponse,
    Response response,
    HttpMethod method,
    HttpType type,
    Map? headers,
    String url,
    Map? body,
  ) async {
    try {
      final defaultHeaders = headers?.cast<String, String>() ?? {};

      if (method == HttpMethod.post) {
        futureResponse = client.post(
          Uri.parse(url),
          headers: defaultHeaders,
          body: body,
        );
      } else if (method == HttpMethod.put) {
        futureResponse = client.put(
          Uri.parse(url),
          headers: defaultHeaders,
          body: body,
        );
      }

      response = await futureResponse!.timeout(const Duration(seconds: 30));
    } catch (error) {
      throw HttpError.serverError;
    }

    return _handleResponse(response);
  }

  dynamic _handleResponse(Response response) {
    Get.log("[${DateTime.now()}] | " +
        "STATUS CODE: ${response.statusCode} | " +
        "URL: ${response.request?.url} | " +
        "METHOD: ${response.request?.method} " +
        (response.statusCode > 499 ? "BODY: ${response.body}" : ""));

    switch (response.statusCode) {
      case 200:
        return jsonDecode(response.body);
      case 201:
      case 204:
        return null;
      case 400:
        throw HttpError.badRequest;
      case 401:
        throw HttpError.unauthorized;
      case 403:
        throw HttpError.forbidden;
      case 404:
        throw HttpError.notFound;
      default:
        throw HttpError.serverError;
    }
  }

  MediaType _varifyMediaType(String value) {
    MediaType _type;
    bool isJpg = value.contains('.jpg') || value.contains('.jpeg');
    bool isPng = value.contains('.png');
    bool isGif = value.contains('.gif');
    bool isMp4 = value.contains('.mp4');

    String subType = '';

    if (isJpg) {
      subType = 'jpeg';
    }

    if (isPng) {
      subType = 'png';
    }

    if (isGif) {
      subType = 'gif';
    }

    if (isMp4) {
      subType = 'mp4';
    }

    if (!isJpg && !isPng && !isGif && !isMp4) {
      _type = MediaType.parse('application/octet-stream');
    } else {
      _type = MediaType.parse("${!isMp4 ? 'image' : 'video'}/$subType");
    }

    return _type;
  }
}
