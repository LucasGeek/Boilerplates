import './http_media.dart';
import './http_type.dart';
import './http_method.dart';

abstract class HttpClient {
  Future<dynamic> request({
    required String url,
    required HttpMethod method,
    HttpType type,
    Map? body,
    Map? headers,
    List<HttpMedia>? files,
  });
}
