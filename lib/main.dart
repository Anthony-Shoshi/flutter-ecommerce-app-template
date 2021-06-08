import 'package:daily_needs/screens/home.dart';
import 'package:daily_needs/screens/onBoardings/onBoardingOne.dart';
import 'package:flutter/material.dart';
import 'constants/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      home: OnBoardingOne(),
    );
  }
}
