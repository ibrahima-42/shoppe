import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFF004CFF),
        borderRadius: BorderRadius.circular(17),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text("Done",style: TextStyle(color: Colors.white),)),
    );
  }
}