import 'package:flutter/material.dart';

class Live extends StatelessWidget {
  const Live({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(17),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Live",style: TextStyle(
          fontSize: 10,
          fontFamily: "Raleway",
          color: Colors.white
        ),),
      ),
    );
  }
}