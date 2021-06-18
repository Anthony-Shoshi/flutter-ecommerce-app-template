import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class ChangePassword extends StatefulWidget {
  ChangePassword({Key? key}) : super(key: key);

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool _obscureText1 = true;
  bool _obscureText2 = true;
  bool _obscureText3 = true;

  void toggleObscure(serialNum) {
    setState(() {
      if (serialNum == 1) {
        _obscureText1 = !_obscureText1;
      } else if (serialNum == 2) {
        _obscureText2 = !_obscureText2;
      } else {
        _obscureText3 = !_obscureText3;
      }
    });
  }

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
                                  "Reset Password",
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
                                  "At least 8 characters, combination of uppercase and lowercase letters",
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
                                "Old Password",
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
                                obscureText: _obscureText1,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                  hintText: 'Enter Old Password',
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
                                "New Password",
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
                                obscureText: _obscureText2,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Enter New Password',
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
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
                                "Confirm Password",
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
                                obscureText: _obscureText3,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      toggleObscure(3);
                                    },
                                    child: Icon(Icons.remove_red_eye_outlined),
                                  ),
                                  hintText: 'Enter Confirm Password',
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
                                "Save Changes",
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
