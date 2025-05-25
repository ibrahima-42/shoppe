import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  TextEditingController controller;
  FormFieldValidator<String>? validator;
  String label;
  String placeholder;
  String? value;
  TextInputType keyboardType;
  bool isPassword;
  bool obscureText;
  final IconData? icon;
  final IconData? suffixIcon;
  final VoidCallback? suffixIconPressed;
  final bool isPhoneField;

  CustomField({
    Key? key,
    required this.controller,
    required this.label,
    required this.placeholder,
    this.value,
    this.icon,
    this.suffixIcon,
    this.obscureText = false,
    this.suffixIconPressed,
    required this.keyboardType,
    required this.isPassword,
    this.isPhoneField = false,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          validator: validator,
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFF8F8F8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide.none,
            ),
            hintText: placeholder,
            prefixIcon:
                isPhoneField
                    ? Container(
                      width: 80,
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "assets/images/senegal.jpg",
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "+221",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: 3),
                          Container(
                            height: 20,
                            width: 1,
                            decoration: BoxDecoration(color: Colors.grey),
                          ),
                        ],
                      ),
                    )
                    : (icon != null ? Icon(icon, size: 17) : null),
            suffixIcon:
                suffixIcon != null
                    ? IconButton(
                      style: IconButton.styleFrom(
                        padding: EdgeInsets.only(right: 10),
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      onPressed: suffixIconPressed,
                      icon: Icon(suffixIcon!, size: 17),
                    )
                    : null,
          ),
          keyboardType: keyboardType,
          obscureText: obscureText,
        ),
      ],
    );
  }
}
