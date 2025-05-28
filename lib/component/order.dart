import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color(0xFFE5EBFC),
          ),
          child: Text(
            "To Pay",
            style: TextStyle(
              color: Color(0xFF004CFF),
              fontSize: 12,
              fontFamily: "Raleway",
            ),
          ),
        ),
        Spacer(),
        Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Color(0xFFE5EBFC),
              ),
              child: Text(
                "To Recieve",
                style: TextStyle(
                  color: Color(0xFF004CFF),
                  fontSize: 12,
                  fontFamily: "Raleway",
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 80,
              child: Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: Color(0xFFE5EBFC),
          ),
          child: Text(
            "To Review",
            style: TextStyle(
              color: Color(0xFF004CFF),
              fontSize: 12,
              fontFamily: "Raleway",
            ),
          ),
        ),
      ],
    );
  }
}
