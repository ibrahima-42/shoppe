import 'package:flutter/material.dart';

class Storie extends StatelessWidget {
  Storie({Key? key}) : super(key: key);

  final List<String> storie = [
    "assets/images/storie1.png",
    "assets/images/storie2.png",
    "assets/images/storie3.png",
    "assets/images/storie3.png",
    "assets/images/storie3.png",
    "assets/images/storie3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: storie.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  height: 230,
                  width: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(storie[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Icon(Icons.play_arrow, color: Colors.white, size: 20),
                ),
              ),
              SizedBox(width: 5),
            ],
          );
        },
      ),
    );
  }
}
