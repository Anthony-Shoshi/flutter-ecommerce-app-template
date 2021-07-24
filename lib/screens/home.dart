import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/models/Category.dart';
import 'package:daily_needs/models/Item.dart';
import 'package:daily_needs/screens/categories/categories.dart';
import 'package:daily_needs/screens/products/categoryProducts.dart';
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
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

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
                            height: screenHeight / 15,
                            width: screenWidth / 7.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage("assets/images/profile.png"),
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
                        height: screenHeight / 4 + 10,
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
                              child: GridView.builder(
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1,
                                ),
                                scrollDirection: Axis.horizontal,
                                itemCount: categories.length,
                                itemBuilder: (context, index) {
                                  var category = categories[index];
                                  return Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (_) => CategoryProducts(
                                                categoryName:
                                                    category.title.toString(),
                                              ),
                                            ),
                                          );
                                        },
                                        child: Container(
                                          height: screenHeight / 8 + 2,
                                          width: screenHeight / 8 + 2,
                                          padding: EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: HexColor(
                                              COLOR_LIGHT_BLUE,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(15.0),
                                          ),
                                          child: Image.asset(
                                            category.image.toString(),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        category.title.toString(),
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                    ],
                                  );
                                },
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
                                  height: screenHeight / 5 - 12,
                                  width: screenWidth / 1 - 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.amberAccent,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: screenHeight / 5,
                                          width: screenWidth / 4,
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
                                  height: screenHeight / 5 - 12,
                                  width: screenWidth / 1 - 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25.0),
                                    color: Colors.purpleAccent,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: SizedBox(
                                          height: screenHeight / 5,
                                          width: screenWidth / 4,
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
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => SearchProducts(),
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
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    ...items.map(
                                      (item) {
                                        return GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (_) => Details(
                                                  productImage:
                                                      item.image.toString(),
                                                ),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 15.0),
                                                height: 200.0,
                                                width: 200.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: AssetImage(
                                                        item.image.toString()),
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
                                                        decoration:
                                                            BoxDecoration(
                                                          color: HexColor(
                                                              COLOR_LIGHT_GREY_001),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    20.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons
                                                              .favorite_border_outlined,
                                                          color: HexColor(
                                                              COLOR_RED),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                        height: 120,
                                                        width: double.infinity,
                                                        decoration:
                                                            new BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                          gradient:
                                                              new LinearGradient(
                                                            end:
                                                                const Alignment(
                                                                    0.0, -1),
                                                            begin:
                                                                const Alignment(
                                                                    0.0, 0.4),
                                                            colors: <Color>[
                                                              const Color(
                                                                  0x8A000000),
                                                              Colors.black12
                                                                  .withOpacity(
                                                                      0.0)
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
                                                        decoration:
                                                            BoxDecoration(
                                                          color: HexColor(
                                                              PRIMARY_COLOR),
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomRight:
                                                                Radius.circular(
                                                                    20.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    10.0),
                                                          ),
                                                        ),
                                                        child: Icon(
                                                          Icons
                                                              .shopping_cart_outlined,
                                                          color: HexColor(
                                                              COLOR_WHITE),
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      child: Container(
                                                        width: screenWidth / 2 -
                                                            25,
                                                        child: Text(
                                                          item.title.toString(),
                                                          maxLines: 1,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          softWrap: false,
                                                          style: TextStyle(
                                                            color: HexColor(
                                                              COLOR_WHITE,
                                                            ),
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ),
                                                      bottom: 50,
                                                      left: 15,
                                                    ),
                                                    Positioned(
                                                      child: Text(
                                                        item.price.toString(),
                                                        style: TextStyle(
                                                          color: HexColor(
                                                            COLOR_WHITE,
                                                          ),
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                        );
                                      },
                                    ),
                                  ],
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
                                      "New Arrivals",
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
                                        builder: (_) => SearchProducts(),
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
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (_) => Details(
                                              productImage:
                                                  "assets/images/2.png",
                                            ),
                                          ),
                                        );
                                      },
                                      child: Column(
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
                                                    "assets/images/3.png"),
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
                                                            Radius.circular(
                                                                20.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                10.0),
                                                      ),
                                                    ),
                                                    child: Icon(
                                                      Icons
                                                          .favorite_border_outlined,
                                                      color:
                                                          HexColor(COLOR_RED),
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                    height: 120,
                                                    width: double.infinity,
                                                    decoration:
                                                        new BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                      gradient:
                                                          new LinearGradient(
                                                        end: const Alignment(
                                                            0.0, -1),
                                                        begin: const Alignment(
                                                            0.0, 0.4),
                                                        colors: <Color>[
                                                          const Color(
                                                              0x8A000000),
                                                          Colors.black12
                                                              .withOpacity(0.0)
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
                                                      color: HexColor(
                                                          PRIMARY_COLOR),
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(
                                                                20.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                10.0),
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
                                                  child: Container(
                                                    width: screenWidth / 2 - 25,
                                                    child: Text(
                                                      "Fresh Strawberry",
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      softWrap: false,
                                                      style: TextStyle(
                                                        color: HexColor(
                                                          COLOR_WHITE,
                                                        ),
                                                        fontSize: 18.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
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
                                                      fontWeight:
                                                          FontWeight.bold,
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
                                                  "assets/images/1.png"),
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
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    color: HexColor(COLOR_RED),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 120,
                                                  width: double.infinity,
                                                  decoration: new BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    gradient:
                                                        new LinearGradient(
                                                      end: const Alignment(
                                                          0.0, -1),
                                                      begin: const Alignment(
                                                          0.0, 0.4),
                                                      colors: <Color>[
                                                        const Color(0x8A000000),
                                                        Colors.black12
                                                            .withOpacity(0.0)
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
                                                    color:
                                                        HexColor(PRIMARY_COLOR),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
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
                                                child: Container(
                                                  width: screenWidth / 2 - 25,
                                                  child: Text(
                                                    "Sweet Mangoes",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: false,
                                                    style: TextStyle(
                                                      color: HexColor(
                                                        COLOR_WHITE,
                                                      ),
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
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
                                                  "assets/images/2.png"),
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
                                                      bottomRight:
                                                          Radius.circular(10.0),
                                                    ),
                                                  ),
                                                  child: Icon(
                                                    Icons
                                                        .favorite_border_outlined,
                                                    color: HexColor(COLOR_RED),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 120,
                                                  width: double.infinity,
                                                  decoration: new BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    gradient:
                                                        new LinearGradient(
                                                      end: const Alignment(
                                                          0.0, -1),
                                                      begin: const Alignment(
                                                          0.0, 0.4),
                                                      colors: <Color>[
                                                        const Color(0x8A000000),
                                                        Colors.black12
                                                            .withOpacity(0.0)
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
                                                    color:
                                                        HexColor(PRIMARY_COLOR),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomRight:
                                                          Radius.circular(20.0),
                                                      topLeft:
                                                          Radius.circular(10.0),
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
                                                child: Container(
                                                  width: screenWidth / 2 - 25,
                                                  child: Text(
                                                    "Juicy Orange",
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    softWrap: false,
                                                    style: TextStyle(
                                                      color: HexColor(
                                                        COLOR_WHITE,
                                                      ),
                                                      fontSize: 18.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
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
            BottomNav(
              currentPageArg: 0,
            ),
          ],
        ),
      ),
    );
  }
}
