import '../../../../../domain/entities/entities.dart';
import '../../../../../domain/helpers/helpers.dart';
import '../../../../../domain/usecases/usecases.dart';
import '../../../../cache/cache.dart';

class LocalLoadToken implements LoadToken {
  final FetchSecureCacheStorage fetchSecureCacheStorage;

  LocalLoadToken({
    required this.fetchSecureCacheStorage,
  });

  @override
  Future<TokenEntity> load() async {
    try {
      final token = await fetch('token');

      return TokenEntity(
        token: "$token",
      );
    } catch (error) {
      throw DomainError.unexpected;
    }
  }

  Future<String?> fetch(String key) async {
    return await fetchSecureCacheStorage.fetch(key);
  }
}
