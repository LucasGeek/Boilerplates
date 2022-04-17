import '../../data/cache/cache.dart';
import '../../data/http/http.dart';

class AuthorizeHttpClientDecorator implements HttpClient {
  final FetchSecureCacheStorage fetchSecureCacheStorage;
  final SaveSecureCacheStorage saveSecureCacheStorage;
  final DeleteSecureCacheStorage deleteSecureCacheStorage;
  final HttpClient decorate;

  AuthorizeHttpClientDecorator({
    required this.fetchSecureCacheStorage,
    required this.saveSecureCacheStorage,
    required this.deleteSecureCacheStorage,
    required this.decorate,
  });

  @override
  Future<dynamic> request({
    required String url,
    required HttpMethod method,
    HttpType type = HttpType.none,
    Map? body,
    Map? headers,
    List<HttpMedia>? files,
  }) async {
    try {
      final token = await fetchSecureCacheStorage.fetch('accessToken');
      final authorizedHeaders = headers ?? {}
        ..addAll({'Authorization': 'Bearer $token'});
      return await decorate.request(
        url: url,
        method: method,
        type: type,
        body: body,
        files: files,
        headers: authorizedHeaders,
      );
    } catch (error) {
      if (error is HttpError && error != HttpError.forbidden) {
        rethrow;
      } else {
        throw HttpError.forbidden;
      }
    }
  }
}
