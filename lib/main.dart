import 'package:flutter/material.dart';
import 'package:lab_test/BMI_Calculator/bmi_calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),
      home: bmi_calculator(),
    );
  }
}
