import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 238, 238),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Icon(Icons.settings,size: 16,color: Color(0xFF004CFF),),
    );
  }
}