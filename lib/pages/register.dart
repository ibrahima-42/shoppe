import 'package:flutter/material.dart';
import 'package:shoppe/component/cancel.dart';
import 'package:shoppe/component/done.dart';
import 'package:shoppe/component/upload.dart';
import 'package:shoppe/models/CustomField.dart';
import 'package:shoppe/responsive/responsive.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
              fit: BoxFit.contain,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.2,
                    ),
                    Text(
                      "Created\naccount",
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontSize: 52,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.04,
                    ),
                    Upload(),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.04,
                    ),
                    CustomField(
                      controller: emailController,
                      label: "email",
                      placeholder: "Email",
                      keyboardType: TextInputType.emailAddress,
                      isPassword: false,
                      icon: Icons.email,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Email est requis";
                        }
                        if (!value.contains("@") || !value.contains(".")) {
                          return "email invalid";
                        }
                        return null;
                      },
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
                      suffixIcon:
                          isPassword ? Icons.visibility_off : Icons.visibility,
                      suffixIconPressed: _togglePassword,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password est requis";
                        }
                        if (value.length < 6) {
                          return "Password doit contenir au moins 6 caracteres";
                        }
                        if (!RegExp(r'[A-Z]').hasMatch(value)) {
                          return " Password doit etre composer de le majuscule";
                        }
                        if (!RegExp(r'[@#]').hasMatch(value)) {
                          return "Password doit contenir @ et #";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    CustomField(
                      controller: numberController,
                      label: "number",
                      placeholder: "Phone number",
                      keyboardType: TextInputType.phone,
                      isPassword: false,
                      isPhoneField: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Phone number est requis";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.04,
                    ),

                    Done(formKey: _formKey),
                    SizedBox(
                      height: ResponsiveHelper.screenHeight(context) * 0.03,
                    ),
                    Cancel(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
