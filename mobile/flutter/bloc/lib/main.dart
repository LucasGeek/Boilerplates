import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stetho/flutter_stetho.dart';

import 'injection_container.dart' as di;
import 'layers/presentation/main_page.dart';

void main() async {
  // Plug in stetho
  if (kDebugMode) Stetho.initialize();

  // Initialize the injection container
  await di.init();

  // Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
    );
  }
}
