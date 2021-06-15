import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/AuthenticationScreens/signIn.dart';
import 'package:daily_needs/screens/AuthenticationScreens/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(PRIMARY_COLOR),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignUp()));
              },
              child: Text("sign up"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => SignIn()));
              },
              child: Text("sign in"),
            ),
          ],
        ),
      ),
    );
  }
}
