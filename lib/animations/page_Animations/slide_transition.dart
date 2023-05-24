import 'package:animations/animations/page_Animations/fade_trnsitions.dart';
import 'package:flutter/material.dart';

class MyCustomSlideTransitions extends StatefulWidget {
  const MyCustomSlideTransitions({super.key});

  @override
  State<MyCustomSlideTransitions> createState() =>
      _MyCustomSlideTransitionsState();
}

class _MyCustomSlideTransitionsState extends State<MyCustomSlideTransitions> {
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
                      SlideTransitionRoute(const SecondPage(),)),
                  child: const Text('TAP TO VIEW FADE ANIMATION 1')),
            
            ],
          ),
        ));
  }
}

class SlideTransitionRoute extends PageRouteBuilder {
  Widget page;

  SlideTransitionRoute(this.page)
      : super(
            pageBuilder: (context, animation, secondaryAnimations) => page,
            transitionDuration: const Duration(seconds: 1),
            reverseTransitionDuration: const Duration(seconds: 1),
            transitionsBuilder: (ctx, animations, secondaryAnimations, child) {
              animations = CurvedAnimation(
                  parent: animations,
                  curve: Curves.fastLinearToSlowEaseIn,
                  reverseCurve: Curves.fastOutSlowIn);
              return Align(
                alignment: Alignment.centerLeft,
                child: SlideTransition(
                    position:
                        Tween(begin: const Offset(0.1, 0.0), end: const Offset(0.0, 0.0))
                            .animate(animations),
                    child: page),
              );
            });
}
