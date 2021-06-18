import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Verification extends StatefulWidget {
  Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                                  "Verification",
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
                                  "We have sent verification code to your email address",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Center(
                                child: Text(
                                  "anthony@gmail.com",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    color: HexColor(PRIMARY_COLOR),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.0,
                            ),
                            Center(
                              child: VerificationCode(
                                textStyle: TextStyle(
                                    fontSize: 20.0, color: Colors.black),
                                underlineColor: HexColor(PRIMARY_COLOR),
                                keyboardType: TextInputType.number,
                                length: 5,
                                clearAll: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Clear all',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                                onCompleted: (String value) {
                                  setState(() {
                                    print(value);
                                  });
                                },
                                onEditing: (bool value) {},
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 17.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Didn't recieve code? ",
                                    style: TextStyle(
                                      color: HexColor(
                                        COLOR_DARK_GREY,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Resend",
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
                                "Continue",
                                style: TextStyle(
                                  fontSize: 17.0,
                                ),
                              ),
                            ),
                            onPressed: () {},
                          ),
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
