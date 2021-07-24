import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/models/Item.dart';
import 'package:daily_needs/screens/order/checkout.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
import 'package:daily_needs/widgets/cartWidg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Cart extends StatefulWidget {
  Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  late List<Item> mitems;

  @override
  void initState() {
    super.initState();
    mitems = items;
  }

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
                    padding: EdgeInsets.only(top: 0.0, bottom: 200.0),
                    itemCount: mitems.length,
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
                          setState(() {
                            mitems.removeAt(index);
                          });
                          print(mitems);
                        },
                        child: GestureDetector(
                          onTap: () => print(mitems[index]),
                          child: CartWidg(item: mitems[index]),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                padding: EdgeInsets.only(bottom: 100.0),
                height: screenHeight / 3 - 60,
                width: screenWidth,
                decoration: BoxDecoration(
                  color: HexColor(COLOR_LIGHT_BLUE),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total: \$320.00",
                      style: TextStyle(
                        color: HexColor(
                          COLOR_BLACK,
                        ),
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Checkout(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: HexColor(PRIMARY_COLOR),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Checkout",
                              style: TextStyle(
                                color: HexColor(
                                  COLOR_WHITE,
                                ),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.double_arrow,
                              color: HexColor(COLOR_WHITE),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BottomNav(
              currentPageArg: 0,
            ),
          ],
        ),
      ),
    );
  }
}
