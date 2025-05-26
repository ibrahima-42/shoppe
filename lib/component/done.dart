import 'package:flutter/material.dart';

class Done extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const Done({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(formKey.currentState!.validate()){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Done")));
        }
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
          child: Text("Done",style: TextStyle(color: Colors.white,backgroundColor: Color(0xFF004CFF)),)),
      ),
    );
  }
}