import 'package:daily_needs/screens/splash.dart';
import 'package:daily_needs/services/storageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
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
      theme: ThemeData(
        accentColor: HexColor(PRIMARY_COLOR),
      ),
      title: APP_NAME,
      home: Splash(),
    );
  }
}
