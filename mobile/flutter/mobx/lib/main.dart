import 'package:flutter/material.dart';
import 'main/factories/factories.dart';
import 'main/main.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  enviroment();
  //instanceFirebaseMessaging();
  runApp(const App());
}
