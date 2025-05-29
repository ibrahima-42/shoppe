import 'package:flutter/material.dart';
import 'package:shoppe/component/announce.dart';
import 'package:shoppe/component/live.dart';
import 'package:shoppe/component/menu.dart';
import 'package:shoppe/component/my-activity.dart';
import 'package:shoppe/component/order.dart';
import 'package:shoppe/component/recent.dart';
import 'package:shoppe/component/scan.dart';
import 'package:shoppe/component/setting.dart';
import 'package:shoppe/component/storie.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: SafeArea(
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                  border: Border.all(
                    width: 3,
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    // width: 30,
                    height: 30,
                  ),
                ),
              ),
              SizedBox(width: 10),
              MyActivity(),
            ],
          ),
        ),
        actions: [
          Scan(),
          SizedBox(width: 5),
          Menu(),
          SizedBox(width: 5),
          Setting(),
          SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Khalil!",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Announce(),
              SizedBox(height: 18),
              Text(
                "Recently viewed",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Recent(),
              SizedBox(height: 12),
              Text(
                "My Orders",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Order(),
              SizedBox(height: 10),
              Text(
                "Stories",
                style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              Storie(),
            ],
          ),
        ),
      ),
    );
  }
}
