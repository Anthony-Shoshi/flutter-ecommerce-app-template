import 'package:daily_needs/screens/splash.dart';
import 'package:daily_needs/services/storageManager.dart';
import 'package:flutter/material.dart';
import 'constants/strings.dart';

Future<void> main() async {
  runApp(MyApp());
  await StorageManager.init();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      home: Splash(),
    );
  }
}
