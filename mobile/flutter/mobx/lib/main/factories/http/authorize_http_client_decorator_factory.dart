import '../../../data/data.dart';
import '../../decorators/decorators.dart';
import '../cache/cache.dart';
import './http_client_factory.dart';

HttpClient makeAuthorizeHttpClientDecorator() => AuthorizeHttpClientDecorator(
      decorate: makeHttpAdapter(),
      fetchSecureCacheStorage: makeSecureStorageAdapter(),
      saveSecureCacheStorage: makeSecureStorageAdapter(),
      deleteSecureCacheStorage: makeSecureStorageAdapter(),
    );
