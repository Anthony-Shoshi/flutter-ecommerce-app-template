import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class SearchProducts extends StatefulWidget {
  SearchProducts({Key? key}) : super(key: key);

  @override
  _SearchProductsState createState() => _SearchProductsState();
}

class _SearchProductsState extends State<SearchProducts> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Search"),
        centerTitle: true,
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
            colorFilter:
                ColorFilter.mode(HexColor(PRIMARY_COLOR), BlendMode.darken),
          ),
        ),
        child: Column(
          children: [
            SafeArea(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 5.0,
                  ),
                  child: TextField(
                    autofocus: true,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Search your daily grocery foods',
                      hintStyle: TextStyle(color: HexColor(COLOR_DARK_GREY)),
                      fillColor: HexColor(COLOR_LIGHT_GREY_001),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor(COLOR_WHITE)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: HexColor(COLOR_WHITE)),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20.0),
                decoration: BoxDecoration(
                  color: HexColor(COLOR_LIGHT_GREY),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.only(
                    top: 6.0,
                  ),
                  child: GridView.count(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    scrollDirection: Axis.vertical,
                    crossAxisCount: 2,
                    children: List.generate(
                      40,
                      (index) {
                        return Column(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: screenHeight / 4 - 10,
                                  width: screenHeight / 4 * 0.9 - 5,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assets/images/test.jpg"),
                                    ),
                                  ),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            color:
                                                HexColor(COLOR_LIGHT_GREY_001),
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: HexColor(COLOR_RED),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 40.0,
                                          width: 40.0,
                                          decoration: BoxDecoration(
                                            color: HexColor(PRIMARY_COLOR),
                                            borderRadius: BorderRadius.only(
                                              bottomRight:
                                                  Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.shopping_cart_outlined,
                                            color: HexColor(COLOR_WHITE),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        child: Text(
                                          "This is title",
                                          style: TextStyle(
                                            color: HexColor(
                                              COLOR_WHITE,
                                            ),
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        bottom: 50,
                                        left: 15,
                                      ),
                                      Positioned(
                                        child: Text(
                                          "\$25.00",
                                          style: TextStyle(
                                            color: HexColor(
                                              COLOR_WHITE,
                                            ),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        bottom: 30,
                                        left: 15,
                                      ),
                                      Positioned(
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.star_border_outlined,
                                              color: HexColor(
                                                COLOR_WHITE,
                                              ),
                                              size: 17.0,
                                            ),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              "4.3 (2325)",
                                              style: TextStyle(
                                                color: HexColor(
                                                  COLOR_WHITE,
                                                ),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                        bottom: 10,
                                        left: 15,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
