import 'package:flutter/material.dart';
import 'package:shoppe/pages/register.dart';

class ButtonStart extends StatelessWidget {
  const ButtonStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Register(),
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: Color(0xFF004CFF),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "Let's get started",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}