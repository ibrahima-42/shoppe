import 'package:flutter/material.dart';
import 'package:shoppe/component/cancel.dart';
import 'package:shoppe/component/done.dart';
import 'package:shoppe/component/upload.dart';
import 'package:shoppe/models/CustomField.dart';

class Register extends StatefulWidget {

  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();


    bool isPassword = true;
    void _togglePassword() {
      setState(() {
        isPassword = !isPassword;
      });
    }
    
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Bubbles1.png"),
              alignment: Alignment.topCenter,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  "Created\naccount",
                  style: TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Upload(),
                SizedBox(height: 20),
                CustomField(
                  controller: emailController,
                  label: "email",
                  placeholder: "Email", 
                  keyboardType: TextInputType.emailAddress, 
                  isPassword: false,
                  icon: Icons.email,
                  ),
                  SizedBox(height: 10),
                  CustomField(
                    controller: passwordController,
                    label: "password",
                    placeholder: "Password", 
                    keyboardType: TextInputType.visiblePassword, 
                    isPassword: true,
                    obscureText: isPassword,
                    icon: Icons.lock_open,
                    suffixIcon: isPassword ? Icons.visibility_off : Icons.visibility,
                    suffixIconPressed: _togglePassword,
                  ),
                  SizedBox(height: 20),
                  CustomField(
                    controller: numberController,
                    label: "number",
                    placeholder: "Phone number",
                    keyboardType: TextInputType.phone,
                    isPassword: false,
                    isPhoneField: true,
                  ),
                  SizedBox(height: 20),
                  Done(),
                  SizedBox(height: 20),
                  Cancel(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
