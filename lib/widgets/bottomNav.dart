import 'package:badges/badges.dart';
import 'package:daily_needs/screens/home.dart';
import 'package:daily_needs/screens/more.dart';
import 'package:daily_needs/screens/order/orderList.dart';
import 'package:daily_needs/screens/products/cart.dart';
import 'package:daily_needs/screens/products/offer.dart';
import 'package:daily_needs/utils/BNBCustomPainter.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final int currentPageArg;
  BottomNav({Key? key, required this.currentPageArg}) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    currentIndex = widget.currentPageArg;
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        color: Colors.transparent,
        width: size.width,
        height: 100,
        child: Stack(
          children: [
            CustomPaint(
              size: Size(size.width, 100),
              painter: BNBCustomPainter(),
            ),
            Center(
              heightFactor: 0.6,
              child: Badge(
                padding: EdgeInsets.all(7),
                toAnimate: true,
                shape: BadgeShape.circle,
                badgeColor: Colors.red,
                borderRadius: BorderRadius.circular(8),
                badgeContent: Text('7', style: TextStyle(color: Colors.white)),
                child: FloatingActionButton(
                  shape: StadiumBorder(
                    side: BorderSide(color: Colors.green, width: 6),
                  ),
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.green,
                    size: 25.0,
                  ),
                  elevation: 0.1,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => Cart(),
                      ),
                    );
                  },
                ),
              ),
            ),
            Container(
              width: size.width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home_outlined,
                          color: currentIndex == 0
                              ? Colors.white
                              : Colors.grey[400],
                        ),
                        onPressed: () {
                          setBottomBarIndex(0);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => Home(),
                            ),
                          );
                        },
                        splashColor: Colors.white,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: currentIndex == 0
                              ? Colors.white
                              : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.shopping_bag_outlined,
                            color: currentIndex == 1
                                ? Colors.white
                                : Colors.grey[400],
                          ),
                          onPressed: () {
                            setBottomBarIndex(1);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => OrderList(),
                              ),
                            );
                          }),
                      Text(
                        "Order",
                        style: TextStyle(
                          color: currentIndex == 1
                              ? Colors.white
                              : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * 0.20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.card_giftcard_outlined,
                            color: currentIndex == 2
                                ? Colors.white
                                : Colors.grey[400],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => Offer(),
                              ),
                            );
                            setBottomBarIndex(2);
                          }),
                      Text(
                        "Offer",
                        style: TextStyle(
                          color: currentIndex == 2
                              ? Colors.white
                              : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.more_horiz_outlined,
                            color: currentIndex == 3
                                ? Colors.white
                                : Colors.grey[400],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => More(),
                              ),
                            );
                            setBottomBarIndex(3);
                          }),
                      Text(
                        "More",
                        style: TextStyle(
                          color: currentIndex == 3
                              ? Colors.white
                              : Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
