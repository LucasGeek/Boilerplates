import 'dart:async';
import 'dart:io';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import '../../data/data.dart';

class LocalStorageAdapter
    implements
        SaveLocalDatabaseStorage,
        FetchLocalDatabaseStorage,
        DeleteLocalDatabaseStorage {
  LocalStorageAdapter() {
    _init();
  }

  final Completer<Directory> _instance = Completer<Directory>();

  Future<void> _init() async {
    _instance.complete(await getApplicationDocumentsDirectory());
    Directory appDocumentDir = await _instance.future;

    Hive.init(appDocumentDir.path);
  }

  @override
  Future<void> saveOrUpdate(
    String name, {
    required String key,
    required String json,
  }) async {
    Box box = await getBox(name);
    await box.put(key, json);
  }

  @override
  Future<void> delete(
    String name, {
    required String key,
  }) async {
    Box box = await getBox(name);
    await box.delete(key);
  }

  @override
  Future<dynamic> fetch(
    String name, {
    required String key,
  }) async {
    Box box = await getBox(name);
    return box.get(key);
  }

  @override
  Future<List<dynamic>> fetchAll(String name) async {
    Box box = await getBox(name);
    return box.values.toList();
  }

  Future<Box> getBox(String box) async {
    if (Hive.isBoxOpen(box)) {
      return Hive.box(box);
    } else {
      Directory appDocumentDir = await _instance.future;
      return await Hive.openBox(box, path: appDocumentDir.path);
    }
  }
}
