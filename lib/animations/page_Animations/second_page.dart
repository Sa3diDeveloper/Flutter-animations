import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.tealAccent,
              child: const Text('TAP TO VIEW SIZE ANIMATION 1'),
              onPressed: () {
                //Navigator.push(context, SizeTransition2(page));
              })
        ],
      ),
    );
  }
}
