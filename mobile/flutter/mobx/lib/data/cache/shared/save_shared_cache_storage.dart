abstract class SaveSharedCacheStorage {
  Future<void> saveOrUpdate({required String key, required String value});
}
