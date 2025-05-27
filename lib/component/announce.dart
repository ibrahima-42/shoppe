import 'package:flutter/material.dart';

class Announce extends StatelessWidget {
  const Announce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Color(0xFFF8F8F8),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Announcement",
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Raleway",
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Maecenas hendrerit luctus libero ac vulputate.",
              style: TextStyle(
                fontSize: 9,
                fontFamily: "Raleway",
              ),
              )
            ],
          ),
          Spacer(),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: Color(0xFF004CFF),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(Icons.arrow_forward_rounded,
            size: 14,
            color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
