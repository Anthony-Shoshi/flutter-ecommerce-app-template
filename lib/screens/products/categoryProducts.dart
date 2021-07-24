import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class CategoryProducts extends StatefulWidget {
  final String categoryName;

  CategoryProducts({Key? key, required this.categoryName}) : super(key: key);

  @override
  _CategoryProductsState createState() => _CategoryProductsState();
}

class _CategoryProductsState extends State<CategoryProducts> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.categoryName),
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
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 120.0),
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
                    mainAxisSpacing: 10.0,
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
                                  width: screenHeight / 4 - 20,
                                  decoration: BoxDecoration(
                                    color: HexColor(COLOR_WHITE),
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/images/3.png"),
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
                                              bottomRight:
                                                  Radius.circular(10.0),
                                            ),
                                          ),
                                          child: Icon(
                                            Icons.favorite_border_outlined,
                                            color: HexColor(COLOR_RED),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 120,
                                          width: double.infinity,
                                          decoration: new BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            gradient: new LinearGradient(
                                              end: const Alignment(0.0, -1),
                                              begin: const Alignment(0.0, 0.4),
                                              colors: <Color>[
                                                const Color(0x8A000000),
                                                Colors.black12.withOpacity(0.0)
                                              ],
                                            ),
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
                                              topLeft: Radius.circular(10.0),
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
                                                COLOR_YELLOW,
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
                                                  COLOR_YELLOW,
                                                ),
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
