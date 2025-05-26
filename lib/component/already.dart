import 'package:flutter/material.dart';
import 'package:shoppe/pages/login.dart';

class Already extends StatelessWidget {
  const Already({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Already have an account?"),
          SizedBox(width: 18,),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(0xFF004CFF),
              borderRadius: BorderRadius.circular(30),
              
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white, size: 18),
          ),
        ],
      ),
    );
  }
}
