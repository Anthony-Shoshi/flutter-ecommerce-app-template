import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  var items = List<String>.generate(15, (i) => "Item is a tas sw $i");
  //List items = ["Test 1", "Test 2", "Test 3", "Test 4", "Test 5", "Test 6"];

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cart"),
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
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 120.0,
              ),
              decoration: BoxDecoration(
                color: HexColor(COLOR_LIGHT_GREY),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: HexColor(COLOR_WHITE),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListView.builder(
                    padding: EdgeInsets.only(top: 0.0, bottom: 100.0),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return Dismissible(
                        background: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            HexColor(COLOR_RED),
                            HexColor(COLOR_LIGHT_RED),
                          ])),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.delete,
                                color: HexColor(
                                  COLOR_WHITE,
                                ),
                              ),
                              Text(
                                "Delete from Cart",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(
                                  color: HexColor(
                                    COLOR_WHITE,
                                  ),
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        key: UniqueKey(),
                        direction: DismissDirection.startToEnd,
                        resizeDuration: Duration(milliseconds: 200),
                        onDismissed: (direction) {
                          print("gone $index");
                          setState(() {
                            items.removeAt(index);
                          });
                          print(items);
                        },
                        child: GestureDetector(
                          onTap: () => print(index),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 15.0, left: 15.0),
                                      child: Container(
                                        height: screenHeight / 10 + 10,
                                        width: screenWidth / 3 + 0.5,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/2.png"),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10.0, right: 10.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "${items[index]}",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: HexColor(
                                                  COLOR_BLACK,
                                                ),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "\$45",
                                              style: TextStyle(
                                                color: HexColor(
                                                  COLOR_BLACK,
                                                ),
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 40.0, right: 15.0, top: 20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            height: 26.0,
                                            width: 26.0,
                                            decoration: BoxDecoration(
                                              color: HexColor(
                                                PRIMARY_COLOR,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.add,
                                                color: HexColor(
                                                  COLOR_WHITE,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 4.0),
                                            child: Container(
                                              child: Text(
                                                "2",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18.0),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 26.0,
                                            width: 26.0,
                                            decoration: BoxDecoration(
                                              color: HexColor(
                                                PRIMARY_COLOR,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            child: Center(
                                              child: Icon(
                                                Icons.remove,
                                                color: HexColor(
                                                  COLOR_WHITE,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Divider(
                                  height: screenHeight / 50,
                                  color: HexColor(COLOR_BLACK),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            BottomNav(),
          ],
        ),
      ),
    );
  }
}
