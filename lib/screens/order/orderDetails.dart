import 'package:daily_needs/constants/strings.dart';
import 'package:daily_needs/widgets/bottomNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderDetails extends StatefulWidget {
  OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Order Details"),
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
                  child: ListView(
                    padding: EdgeInsets.only(
                        top: 10.0, left: 5.0, right: 5.0, bottom: 120.0),
                    children: [
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        isFirst: true,
                        indicatorStyle: IndicatorStyle(
                          width: 30,
                          height: 30,
                          drawGap: true,
                          color: HexColor(PRIMARY_COLOR),
                          iconStyle: IconStyle(
                            color: HexColor(COLOR_WHITE),
                            iconData: Icons.check,
                          ),
                        ),
                        beforeLineStyle: LineStyle(
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        startChild: Container(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "9:30 AM",
                            style: TextStyle(
                              color: HexColor(COLOR_BLACK),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.only(top: 35.0, left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Order Placed",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Your order #38535 was placed for delivery",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                          width: 30,
                          height: 30,
                          drawGap: true,
                          color: HexColor(PRIMARY_COLOR),
                          iconStyle: IconStyle(
                            color: HexColor(COLOR_WHITE),
                            iconData: Icons.check,
                          ),
                        ),
                        beforeLineStyle: LineStyle(
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        startChild: Container(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "9:35 AM",
                            style: TextStyle(
                              color: HexColor(COLOR_BLACK),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.only(top: 50.0, left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pending",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Your order is pending for confirmation. We will confirm you within 5 minutes.",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                          width: 30,
                          height: 30,
                          drawGap: true,
                          color: HexColor(PRIMARY_COLOR),
                          iconStyle: IconStyle(
                            color: HexColor(COLOR_WHITE),
                            iconData: Icons.check,
                          ),
                        ),
                        beforeLineStyle: LineStyle(
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        startChild: Container(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "9:55 AM",
                            style: TextStyle(
                              color: HexColor(COLOR_BLACK),
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.only(top: 40.0, left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Confirmed",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Your order is confirmed will deliver you within 20 minutes.",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                          width: 30,
                          height: 30,
                          drawGap: true,
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        beforeLineStyle: LineStyle(
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.only(top: 35.0, left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Processing",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Your order is processing to deliver it on time.",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      TimelineTile(
                        alignment: TimelineAlign.manual,
                        lineXY: 0.3,
                        indicatorStyle: IndicatorStyle(
                          width: 30,
                          height: 30,
                          drawGap: true,
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        isLast: true,
                        beforeLineStyle: LineStyle(
                          color: HexColor(COLOR_LIGHT_GREY),
                        ),
                        endChild: Container(
                          padding: EdgeInsets.only(top: 45.0, left: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Delivered",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "Your order is deliver to you and marked as delivered by customer.",
                                style: TextStyle(
                                  color: HexColor(COLOR_BLACK),
                                  fontSize: 15.0,
                                ),
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
              currentPageArg: 3,
            ),
          ],
        ),
      ),
    );
  }
}
