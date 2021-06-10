import 'dart:async';
import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/home.dart';
import 'package:daily_needs/screens/onBoardings/onBoardingScreen.dart';
import 'package:daily_needs/services/storageManager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  StorageManager _storageManager = StorageManager();

  void goToNext() {
    Timer(Duration(seconds: 3), () {
      if (_storageManager.getData("isFirstTime") == null) {
        _storageManager.storeData("isFirstTime", "yes");
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => OnBoardingScreen()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => Home()));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    goToNext();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200.0,
                width: 200.0,
                child: Image.asset("assets/images/logo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: CircularProgressIndicator(
                  backgroundColor: HexColor(COLOR_LIGHT_GREY),
                  color: HexColor(COLOR_BLACK),
                ),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(HexColor(PRIMARY_COLOR), BlendMode.darken),
          ),
        ),
      ),
    );
  }
}
