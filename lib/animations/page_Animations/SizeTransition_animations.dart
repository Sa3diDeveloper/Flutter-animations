import 'package:animations/animations/page_Animations/second_page.dart';
import 'package:flutter/material.dart';

class MyCustomTransitions extends StatefulWidget {
  const MyCustomTransitions({super.key});

  @override
  State<MyCustomTransitions> createState() => _MyCustomTransitionsState();
}

class _MyCustomTransitionsState extends State<MyCustomTransitions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Size Transition '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
                color: Colors.tealAccent,
                child: const Text('TAP TO VIEW SIZE ANIMATION 1'),
                onPressed: () {
                  Navigator.push(context, SizeTransition2(const SecondPage()));
                })
          ],
        ),
      ),
    );
  }
}

class SizeTransition2 extends PageRouteBuilder {
  Widget page;
  SizeTransition2(this.page)
      : super(
            barrierColor: Colors.red,
            pageBuilder: (context, animation, anotherAnimations) => page,
            transitionDuration: const Duration(milliseconds: 1000),
            reverseTransitionDuration: const Duration(milliseconds: 2000),
            transitionsBuilder: (context, animation, anotherAnimations, child) {
              animation = CurvedAnimation(
                  reverseCurve: Curves.fastOutSlowIn,
                  parent: animation,
                  curve: Curves.fastEaseInToSlowEaseOut);
              return Align(
                alignment: Alignment.center,
                child: SizeTransition(
                    // axis: Axis.vertical,
                    axisAlignment: 1,
                    sizeFactor: animation,
                    child: page),
              );
            });
}
