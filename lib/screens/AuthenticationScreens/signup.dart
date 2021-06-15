import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/AuthenticationScreens/signIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: Container(
            decoration: BoxDecoration(
              color: HexColor(COLOR_LIGHT_GREY),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35.0),
                topRight: Radius.circular(35.0),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 40.0, bottom: 20.0),
                              child: Center(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Center(
                                child: Text(
                                  "Sign up with your name, email and password to continue",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 50.0,
                                left: 20.0,
                              ),
                              child: Text(
                                "Name",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: HexColor(COLOR_DARK_GREY),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                20.0,
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Full Name',
                                  hintStyle: TextStyle(
                                      color: HexColor(COLOR_DARK_GREY)),
                                  fillColor: HexColor(COLOR_LIGHT_GREY_001),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: Text(
                                "Email Address",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: HexColor(COLOR_DARK_GREY),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                20.0,
                              ),
                              child: TextField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Email Address',
                                  hintStyle: TextStyle(
                                      color: HexColor(COLOR_DARK_GREY)),
                                  fillColor: HexColor(COLOR_LIGHT_GREY_001),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 20.0,
                              ),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: HexColor(COLOR_DARK_GREY),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(
                                20.0,
                              ),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter Password',
                                  hintStyle: TextStyle(
                                      color: HexColor(COLOR_DARK_GREY)),
                                  fillColor: HexColor(COLOR_LIGHT_GREY_001),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: HexColor(COLOR_WHITE)),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: HexColor(COLOR_WHITE),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: HexColor(COLOR_WHITE),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 17.0,
                        ),
                        child: SizedBox(
                          width: double.infinity,
                          height: 45.0,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                HexColor(
                                  PRIMARY_COLOR,
                                ),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                            child: Container(
                              child: Text(
                                "Sign up",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 17.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Already have an account? "),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => SignIn()));
                              },
                              child: Text(
                                "Sign in",
                                style: TextStyle(
                                  color: HexColor(PRIMARY_COLOR),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
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
