import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class OrderWidg extends StatelessWidget {
  final String image;
  final String productTitle;
  final String price;
  final String status;
  final String orderDate;

  const OrderWidg({
    Key? key,
    required this.image,
    required this.productTitle,
    required this.price,
    required this.status,
    required this.orderDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: HexColor(COLOR_LIGHT_GREY),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: screenHeight / 9,
            width: screenWidth / 5,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(
            width: 25.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productTitle,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: HexColor(COLOR_LIGHT_GREY),
                  ),
                  child: Text(status),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 65.0),
            child: Text(
              orderDate,
              style: TextStyle(
                color: HexColor(COLOR_BLACK),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
