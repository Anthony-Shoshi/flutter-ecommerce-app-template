import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/order/orderDetails.dart';
import 'package:daily_needs/screens/products/details.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
import 'package:daily_needs/widgets/offerWidg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Offer extends StatefulWidget {
  Offer({Key? key}) : super(key: key);

  @override
  _OfferState createState() => _OfferState();
}

class _OfferState extends State<Offer> {
  String? chooseValue;
  List filterItems = ["Lowest Price", "Highest Price"];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Offer List"),
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
                  height: screenHeight,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: HexColor(COLOR_WHITE),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 15.0,
                          right: 15.0,
                          top: 15.0,
                          bottom: 10.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                    fontSize: 17.0,
                                    color: HexColor(COLOR_DARK_GREY),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                DropdownButton(
                                  hint: Text("Select Filter"),
                                  value: chooseValue,
                                  onChanged: (newValue) {
                                    setState(() {
                                      chooseValue = newValue.toString();
                                    });
                                  },
                                  items: filterItems.map((e) {
                                    return DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                            Text(
                              "234 Results",
                              style: TextStyle(
                                fontSize: 17.0,
                                color: HexColor(COLOR_DARK_GREY),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: ListView(
                            padding: EdgeInsets.only(top: 5.0, bottom: 120.0),
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => Details(),
                                  ),
                                ),
                                child: OfferWidg(
                                  image: 'assets/images/3.png',
                                  price: '\$34.90',
                                  productTitle: 'Pineapple (1KG)',
                                  discount: '5%',
                                ),
                              ),
                              OfferWidg(
                                image: 'assets/images/1.png',
                                price: '\$51.32',
                                productTitle: 'Orange',
                                discount: '23%',
                              ),
                              OfferWidg(
                                image: 'assets/images/3.png',
                                price: '\$12.64',
                                productTitle: 'Chips',
                                discount: '12%',
                              ),
                              OfferWidg(
                                image: 'assets/images/2.png',
                                price: '\$52.64',
                                productTitle: 'Mango',
                                discount: '45%',
                              ),
                              OfferWidg(
                                image: 'assets/images/3.png',
                                price: '\$14.00',
                                productTitle: 'Mango',
                                discount: '36%',
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
            BottomNav(
              currentPageArg: 2,
            ),
          ],
        ),
      ),
    );
  }
}
