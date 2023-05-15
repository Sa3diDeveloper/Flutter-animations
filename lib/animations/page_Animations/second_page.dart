import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text("Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
              ))),
    );
  }
}
