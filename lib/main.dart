import 'package:flutter/material.dart';
import 'package:shoppe/pages/home.dart';
import 'package:shoppe/pages/login.dart';
import 'package:shoppe/pages/register.dart';
import 'package:shoppe/pages/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Start(),
    );
  }
}
