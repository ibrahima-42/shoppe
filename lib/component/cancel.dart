import 'package:flutter/material.dart';

class Cancel extends StatelessWidget {
  const Cancel({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Text("Cancel",style: TextStyle(color: const Color.fromARGB(255, 71, 69, 69)),)));
  }
}