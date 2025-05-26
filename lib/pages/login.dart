import 'package:flutter/material.dart';
import 'package:shoppe/component/cancel.dart';
import 'package:shoppe/component/done.dart';
import 'package:shoppe/models/CustomField.dart';

class Login extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cover-login.png"),
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 270,),
                  Text(
                    "Login",
                    style: TextStyle(
                      fontFamily: "Raleway",
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Good to see you back!",
                        style: TextStyle(
                          fontFamily: "Nunito",
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(width: 6,),
                      Icon(Icons.favorite, size: 16,)
                    ],
                  ),
                  SizedBox(height: 20,),
                  CustomField(
                    controller: emailController,
                    label: "email",
                    placeholder: "email",
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                    icon: Icons.email,
                    validator: (value) {
                      if (value!.isEmpty){
                        return "Email est requis";
                      }
                      if (!value.contains("@")||!value.contains(".")){
                        return "email invalid";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20,),
                  Done(formKey: _formKey),
                  SizedBox(height: 20,),
                  Cancel(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}