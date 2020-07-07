import 'package:flutter/material.dart';

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Welcome to screen page",
        style: TextStyle(fontSize: 25.0),
      )),
    );
  }
}