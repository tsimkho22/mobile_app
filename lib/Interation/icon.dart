import 'package:flutter/material.dart';

class icon extends StatefulWidget {
  const icon({super.key});

  @override
  State<icon> createState() => _iconState();
}

class _iconState extends State<icon> {
  bool _iconTap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Interation',
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              _iconTap = !_iconTap;
            });
          },
          child: Icon(
            _iconTap ? Icons.favorite : Icons.favorite,
            size: 100,
            color: _iconTap ? Colors.red : Colors.blue,
          ),
        ),
      ),
    );
  }
}
