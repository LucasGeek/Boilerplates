import '../../../../../data/usecases/usecases.dart';
import '../../../../../domain/usecases/usecases.dart';
import '../../../factories.dart';

LoadToken makeLocalLoadToken() => LocalLoadToken(
      fetchSecureCacheStorage: makeSecureStorageAdapter(),
    );
