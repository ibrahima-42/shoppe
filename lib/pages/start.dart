import 'package:flutter/material.dart';
import 'package:shoppe/component/already.dart';
import 'package:shoppe/component/buttonstart.dart';
import 'package:shoppe/responsive/responsive.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: ResponsiveHelper.screenHeight(context) * 0.2,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/logo.png",
                width: 134,
                height: 134,
              ),
            ),
            Text(
              "Shoppe",
              style: TextStyle(
                fontFamily: "Raleway",
                fontSize: 52,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            SizedBox(
              height: 20,
            ),
        
            Align(
              alignment: Alignment.center,
              child: Text(
                "Beautiful eCommerce UI Kit\nfor your online store",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 19,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ButtonStart(),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: ResponsiveHelper.screenHeight(context) * 0.04,
            ),
            Already(),
          ],
        ),
      ),
    );
  }
}
