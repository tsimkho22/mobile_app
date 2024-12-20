import 'package:flutter/material.dart';
import 'package:lab_test/alert/CustomAlert1.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'How to create alert message',
          ),
        ),
        body: CustomAlert1());
  }
}
