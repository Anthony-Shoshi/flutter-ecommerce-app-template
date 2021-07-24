import 'dart:ui';

import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/models/Address.dart';
import 'package:daily_needs/models/Payments.dart';
import 'package:daily_needs/screens/home.dart';
import 'package:daily_needs/screens/order/orderDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Checkout"),
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
                  child: Stack(
                    children: [
                      ListView(
                        padding: EdgeInsets.only(top: 0.0, bottom: 80.0),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Address",
                                          style: TextStyle(
                                            color: HexColor(COLOR_BLACK),
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Add New",
                                          style: TextStyle(
                                            color: HexColor(PRIMARY_COLOR),
                                            fontSize: 17.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 10.0,
                                    color: Colors.black,
                                  ),
                                  ...addresses.map(
                                    (item) {
                                      return Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  bottom: 25.0),
                                              child: Checkbox(
                                                activeColor: Colors.green,
                                                checkColor: Colors.white,
                                                value: item.value,
                                                onChanged: (val) {
                                                  setState(() {
                                                    item.value = !item.value;
                                                    makeOtherFalse(
                                                        addresses.indexOf(item),
                                                        addresses);
                                                  });
                                                },
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${item.title}",
                                                  style: TextStyle(
                                                    color:
                                                        HexColor(COLOR_BLACK),
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 10.0,
                                                ),
                                                Text(
                                                  "${item.details}",
                                                  style: TextStyle(
                                                    color:
                                                        HexColor(COLOR_BLACK),
                                                    fontSize: 17.0,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: HexColor(COLOR_WHITE),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Payment",
                                          style: TextStyle(
                                            color: HexColor(COLOR_BLACK),
                                            fontSize: 24.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 10.0,
                                    color: Colors.black,
                                  ),
                                  ...payments.map(
                                    (payment) {
                                      return CheckboxListTile(
                                        activeColor: Colors.green,
                                        checkColor: Colors.white,
                                        controlAffinity:
                                            ListTileControlAffinity.leading,
                                        title: Text(
                                          "${payment.paymentMethod}",
                                          style: TextStyle(
                                            color: HexColor(COLOR_BLACK),
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        value: payment.value,
                                        onChanged: (val) {
                                          setState(() {
                                            payment.value = !payment.value;
                                            makeOtherFalse(
                                                payments.indexOf(payment),
                                                payments);
                                          });
                                        },
                                      );
                                    },
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: HexColor(COLOR_WHITE),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        bottom: 0.0,
                        child: Container(
                          width: screenWidth,
                          decoration: BoxDecoration(
                            color: HexColor(COLOR_WHITE),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              topRight: Radius.circular(30.0),
                            ),
                          ),
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
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
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
                                            orderConfirmationPopUp(context);
                                          },
                                          child: Container(
                                            height: 50.0,
                                            width: 200.0,
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(15.0),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Place Order",
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
                              ),
                            ],
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
      ),
    );
  }

  void makeOtherFalse(int indexOf, List modelss) {
    modelss.forEach(
      (item) {
        if (modelss.indexOf(item) != indexOf) {
          item.value = false;
        }
      },
    );
  }

  void orderConfirmationPopUp(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)), //this right here
          child: Container(
            height: sh / 1.7,
            width: sw,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200.0,
                    width: 200.0,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/onboarding3.jpg"),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Order Successfull",
                    style: TextStyle(
                      color: HexColor(
                        COLOR_BLACK,
                      ),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Your order #943855 is successfully placed.",
                      style: TextStyle(
                        color: HexColor(
                          COLOR_BLACK,
                        ),
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => OrderDetails())),
                    child: Container(
                      height: 45.0,
                      width: 170.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                        child: Text(
                          "Track my Order",
                          style: TextStyle(
                            color: HexColor(
                              COLOR_WHITE,
                            ),
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home())),
                    child: Text(
                      "Go Back",
                      style: TextStyle(
                        color: HexColor(
                          PRIMARY_COLOR,
                        ),
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
