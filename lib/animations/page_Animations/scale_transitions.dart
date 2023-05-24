import 'package:animations/animations/page_Animations/fade_trnsitions.dart';
import 'package:flutter/material.dart';

class MyCustomScaleTransitions extends StatefulWidget {
  const MyCustomScaleTransitions({super.key});

  @override
  State<MyCustomScaleTransitions> createState() =>
      _MyCustomScaleTransitionsState();
}

class _MyCustomScaleTransitionsState extends State<MyCustomScaleTransitions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      ScaleRoute(const SecondPage(), Alignment.bottomCenter)),
                  child: const Text('TAP TO VIEW FADE ANIMATION 1')),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      ScaleRoute(const SecondPage(), Alignment.bottomLeft)),
                  child: const Text('TAP TO VIEW FADE ANIMATION 1')),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      ScaleRoute(const SecondPage(), Alignment.center)),
                  child: const Text('TAP TO VIEW FADE ANIMATION 1')),
              ElevatedButton(
                  onPressed: () => Navigator.push(context,
                      ScaleRoute(const SecondPage(), Alignment.topRight)),
                  child: const Text('TAP TO VIEW FADE ANIMATION 1')),
            ],
          ),
        ));
  }
}

class ScaleRoute extends PageRouteBuilder {
  Widget page;
  Alignment alignment;
  ScaleRoute(this.page, this.alignment)
      : super(
            pageBuilder: (context, animation, secondaryAnimations) => page,
            reverseTransitionDuration: const Duration(seconds: 2),
            transitionDuration: const Duration(seconds: 2),
            transitionsBuilder:
                (context, animation, secondaryAnimations, child) {
              animation = CurvedAnimation(
                  reverseCurve: Curves.fastOutSlowIn,
                  parent: animation,
                  curve: Curves.fastLinearToSlowEaseIn);
              return ScaleTransition(
                  alignment: alignment, scale: animation, child: child);
            });
}
