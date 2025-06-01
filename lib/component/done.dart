import 'package:flutter/material.dart';
import 'package:shoppe/pages/home.dart';

class Done extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const Done({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(formKey.currentState!.validate()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));
          Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
        }
      },
      child: Container(
        width: double.infinity,
        height: 61,
        decoration: BoxDecoration(
          color: Color(0xFF004CFF),
          borderRadius: BorderRadius.circular(17),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text("Done",style: TextStyle(
            color: Colors.white,
            letterSpacing: 0.5,
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontFamily: "Raleway",
            ),),),
      ),
    );
  }
}