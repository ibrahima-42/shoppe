import 'package:flutter/material.dart';
import 'package:shoppe/component/live.dart';

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
                borderRadius: BorderRadius.circular(10),
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(storie[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: IconButton(
                        iconSize: 20,
                        icon: Icon(Icons.play_arrow),
                        color: Colors.white,
                        onPressed: (){},
                      ), 
                    ),
                    if(index == 0)
                        Positioned(
                          top: 2,
                          left: 10,
                          child: Live(),
                        ),
                  ],
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
