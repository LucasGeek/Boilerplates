abstract class FetchLocalDatabaseStorage {
  Future<dynamic> fetch(String name, {required String key});
  Future<dynamic> fetchAll(String name);
}
