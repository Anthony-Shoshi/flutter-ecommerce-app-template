import 'package:daily_needs/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hex_color/flutter_hex_color.dart';

class CartWidg extends StatefulWidget {
  const CartWidg({
    Key? key,
    required this.item,
  }) : super(key: key);

  final item;

  @override
  _CartWidgState createState() => _CartWidgState();
}

class _CartWidgState extends State<CartWidg> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 10.0,
      ),
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
                image: AssetImage(widget.item.image),
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
                  widget.item.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    if (widget.item.discount != null)
                      Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          color: HexColor(COLOR_RED),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Text(
                          widget.item.discount,
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,
                            color: HexColor(COLOR_WHITE),
                          ),
                        ),
                      ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      widget.item.price,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 26.0,
                  width: 26.0,
                  decoration: BoxDecoration(
                    color: HexColor(
                      PRIMARY_COLOR,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
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
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    child: Text(
                      "2",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18.0),
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
                    borderRadius: BorderRadius.circular(8.0),
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
          ),
        ],
      ),
    );
  }
}
