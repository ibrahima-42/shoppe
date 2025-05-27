import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 239, 238, 238),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Icon(Icons.menu,size: 16,color: Color(0xFF004CFF),),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: Container(
            height: 7,
            width: 7,
            decoration: BoxDecoration(
              color: Color(0xFF004CFF),
              borderRadius: BorderRadius.circular(17),
            ),
          ),
        )
      ],
    );
  }
}