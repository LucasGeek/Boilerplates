import 'package:localstorage/localstorage.dart';

import '../../data/data.dart';

class SharedStorageAdapter
    implements
        SaveSharedCacheStorage,
        FetchSharedCacheStorage,
        DeleteSharedCacheStorage {
  final LocalStorage localStorage;

  SharedStorageAdapter({required this.localStorage});

  @override
  Future<void> saveOrUpdate(
      {required String key, required dynamic value}) async {
    await localStorage.ready;
    await localStorage.deleteItem(key);
    await localStorage.setItem(key, value);
  }

  @override
  Future<void> delete(String key) async {
    await localStorage.ready;
    await localStorage.deleteItem(key);
  }

  @override
  Future<dynamic> fetch(String key) async {
    await localStorage.ready;
    return await localStorage.getItem(key);
  }
}
