import 'package:flutter/material.dart';

class MyActivity extends StatelessWidget {
  const MyActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Color(0xFF004CFF),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Text("My Activity",
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Raleway",
        color: Colors.white,
      ),
      ),
    );
  }
}