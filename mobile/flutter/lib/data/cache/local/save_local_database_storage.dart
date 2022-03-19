abstract class SaveLocalDatabaseStorage {
  Future<void> save(
    String name, {
    required String key,
    required String json,
  });
}
