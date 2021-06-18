import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/categories/categories.dart';
import 'package:daily_needs/screens/products/details.dart';
import 'package:daily_needs/screens/products/searchProducts.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
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
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
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
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Hey, Good Morning",
                                style: TextStyle(
                                  color: HexColor(
                                    COLOR_WHITE,
                                  ),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Let's search grocery items here",
                                style: TextStyle(
                                  color: HexColor(
                                    COLOR_WHITE,
                                  ),
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    AssetImage("assets/images/onboarding1.jpg"),
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                        vertical: 20.0,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: HexColor(COLOR_LIGHT_GREY_001),
                        ),
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(13.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => SearchProducts(),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: HexColor(COLOR_DARK_GREY),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "Search your daily needy food",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: HexColor(COLOR_DARK_GREY),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 220.0,
              ),
              decoration: BoxDecoration(
                color: HexColor(COLOR_LIGHT_GREY),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.0),
                  topRight: Radius.circular(35.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: ListView(
                  padding: EdgeInsets.only(top: 0.0),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        height: size.height / 4,
                        decoration: BoxDecoration(
                          color: HexColor(COLOR_WHITE),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Categories",
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => Categories(),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor(PRIMARY_COLOR),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Expanded(
                              child: GridView.count(
                                scrollDirection: Axis.horizontal,
                                crossAxisCount: 1,
                                children: List.generate(40, (index) {
                                  return Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 13.0,
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Details(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            height: size.height / 8,
                                            width: size.width / 3,
                                            decoration: BoxDecoration(
                                              color: HexColor(
                                                COLOR_LIGHT_BLUE,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Image.asset(
                                                "assets/images/logo.png",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Title ${index + 1}",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                ),
                                child: Container(
                                  height: 150.0,
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.amberAccent,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: 100.0,
                                          width: 100.0,
                                          child: Image.asset(
                                              "assets/images/logo.png"),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0, bottom: 10.0),
                                            child: Text(
                                              "19% discount",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Container(
                                              width: 150.0,
                                              child: Text(
                                                "This is a discount description man do you here me?",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                ),
                                child: Container(
                                  height: 150.0,
                                  width: 300.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.purpleAccent,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: 100.0,
                                          width: 100.0,
                                          child: Image.asset(
                                              "assets/images/logo.png"),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30.0, bottom: 10.0),
                                            child: Text(
                                              "19% discount",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 25.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 5.0),
                                            child: Container(
                                              width: 150.0,
                                              child: Text(
                                                "This is a discount description man do you here me?",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          top: 15.0,
                          bottom: 130.0,
                        ),
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15.0),
                          decoration: BoxDecoration(
                            color: HexColor(COLOR_WHITE),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "Popular Deals",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      "See All",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor(PRIMARY_COLOR),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          height: 200.0,
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/test.jpg"),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: HexColor(
                                                        COLOR_LIGHT_GREY_001),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
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
                                                    color:
                                                        HexColor(PRIMARY_COLOR),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color:
                                                        HexColor(COLOR_WHITE),
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
                                                      Icons
                                                          .star_border_outlined,
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          height: 200.0,
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/test.jpg"),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: HexColor(
                                                        COLOR_LIGHT_GREY_001),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
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
                                                    color:
                                                        HexColor(PRIMARY_COLOR),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color:
                                                        HexColor(COLOR_WHITE),
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
                                                      Icons
                                                          .star_border_outlined,
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          height: 200.0,
                                          width: 200.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  "assets/images/test.jpg"),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                top: 0,
                                                left: 0,
                                                child: Container(
                                                  height: 40.0,
                                                  width: 40.0,
                                                  decoration: BoxDecoration(
                                                    color: HexColor(
                                                        COLOR_LIGHT_GREY_001),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
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
                                                    color:
                                                        HexColor(PRIMARY_COLOR),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color:
                                                        HexColor(COLOR_WHITE),
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
                                                      Icons
                                                          .star_border_outlined,
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
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
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
