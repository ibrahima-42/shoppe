import 'package:flutter/material.dart';

class Recent extends StatelessWidget {
  Recent({Key? key}) : super(key: key);

  final List<String> recent = [
    "assets/images/recent1.png",
    "assets/images/recent2.png",
    "assets/images/recent3.png",
    "assets/images/recent4.png",
    "assets/images/recent5.png",
    "assets/images/recent1.png",
    "assets/images/recent2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recent.length,
        itemBuilder: (context, index) {
          return 
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.white,width: 3),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 81, 80, 80),
                        blurRadius: 3,
                        offset: Offset(0,2),
                      )
                    ]
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(recent[index],
                    fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10,),
              ],
            );
        },
      ),
    );
  }
}