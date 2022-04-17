abstract class SaveLocalDatabaseStorage {
  Future<void> saveOrUpdate(
    String name, {
    required String key,
    required String json,
  });
}
