import 'package:bmi/screens/gender/Gender.dart';
import 'package:bmi/screens/login/LoginPage.dart';
import 'package:bmi/screens/parameters/CalculationPage.dart';

import 'package:bmi/screens/result/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
