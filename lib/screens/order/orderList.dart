import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/screens/order/orderDetails.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
import 'package:daily_needs/widgets/orderWidg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class OrderList extends StatefulWidget {
  OrderList({Key? key}) : super(key: key);

  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Order List"),
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
                      Container(
                        padding: EdgeInsets.all(10.0),
                        child: TabBar(
                          isScrollable: true,
                          indicator: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: HexColor(PRIMARY_COLOR)),
                          labelColor: HexColor(COLOR_WHITE),
                          labelStyle: TextStyle(fontSize: 18.0),
                          unselectedLabelColor: HexColor(COLOR_BLACK),
                          controller: _controller,
                          tabs: [
                            Tab(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 10.0,
                                    bottom: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: HexColor(PRIMARY_COLOR),
                                    )),
                                child: Text(
                                  "All Order",
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 10.0,
                                    bottom: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: HexColor(PRIMARY_COLOR),
                                    )),
                                child: Text(
                                  "Pending",
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 10.0,
                                    bottom: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: HexColor(PRIMARY_COLOR),
                                    )),
                                child: Text(
                                  "Processing",
                                ),
                              ),
                            ),
                            Tab(
                              child: Container(
                                padding: EdgeInsets.only(
                                    left: 20.0,
                                    right: 20.0,
                                    top: 10.0,
                                    bottom: 10.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color: HexColor(PRIMARY_COLOR),
                                    )),
                                child: Text(
                                  "Delivered",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: TabBarView(
                            controller: _controller,
                            children: [
                              ListView(
                                padding:
                                    EdgeInsets.only(top: 5.0, bottom: 120.0),
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => OrderDetails(),
                                      ),
                                    ),
                                    child: OrderWidg(
                                      image: 'assets/images/3.png',
                                      orderDate: '23 Jul, 2021',
                                      price: '\$34.90',
                                      productTitle: 'Pineapple (1KG)',
                                      status: 'Processing',
                                    ),
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/1.png',
                                    orderDate: '23 May, 2021',
                                    price: '\$51.32',
                                    productTitle: 'Orange',
                                    status: 'Delivered',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '03 Jan, 2021',
                                    price: '\$12.64',
                                    productTitle: 'Chips',
                                    status: 'Processing',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/2.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$52.64',
                                    productTitle: 'Mango',
                                    status: 'Pending',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$14.00',
                                    productTitle: 'Mango',
                                    status: 'Processing',
                                  ),
                                ],
                              ),
                              ListView(
                                padding:
                                    EdgeInsets.only(top: 5.0, bottom: 120.0),
                                children: [
                                  OrderWidg(
                                    image: 'assets/images/1.png',
                                    orderDate: '23 May, 2021',
                                    price: '\$51.32',
                                    productTitle: 'Orange',
                                    status: 'Pending',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '03 Jan, 2021',
                                    price: '\$12.64',
                                    productTitle: 'Chips',
                                    status: 'Pending',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$34.90',
                                    productTitle: 'Pineapple (1KG)',
                                    status: 'Pending',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/2.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$52.64',
                                    productTitle: 'Mango',
                                    status: 'Pending',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$14.00',
                                    productTitle: 'Mango',
                                    status: 'Pending',
                                  ),
                                ],
                              ),
                              ListView(
                                padding:
                                    EdgeInsets.only(top: 5.0, bottom: 120.0),
                                children: [
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$34.90',
                                    productTitle: 'Pineapple (1KG)',
                                    status: 'Processing',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/1.png',
                                    orderDate: '23 May, 2021',
                                    price: '\$51.32',
                                    productTitle: 'Orange',
                                    status: 'Processing',
                                  ),
                                ],
                              ),
                              ListView(
                                padding:
                                    EdgeInsets.only(top: 5.0, bottom: 120.0),
                                children: [
                                  OrderWidg(
                                    image: 'assets/images/2.png',
                                    orderDate: '23 Jul, 2021',
                                    price: '\$34.90',
                                    productTitle: 'Pineapple (1KG)',
                                    status: 'Delivered',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/1.png',
                                    orderDate: '23 May, 2021',
                                    price: '\$51.32',
                                    productTitle: 'Orange',
                                    status: 'Delivered',
                                  ),
                                  OrderWidg(
                                    image: 'assets/images/3.png',
                                    orderDate: '03 Jan, 2021',
                                    price: '\$12.64',
                                    productTitle: 'Chips',
                                    status: 'Delivered',
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
            BottomNav(
              currentPageArg: 1,
            ),
          ],
        ),
      ),
    );
  }
}
