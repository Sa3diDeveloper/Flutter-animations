import 'package:flutter/material.dart';

class MyCustomTransitionFade extends StatelessWidget {
  const MyCustomTransitionFade({super.key});

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
                onPressed: () =>
                    Navigator.push(context, FadeRoute1(const SecondPage())),
                child: const Text('TAP TO VIEW FADE ANIMATION 1')),
            ElevatedButton(
              onPressed: () =>
                  Navigator.push(context, FadeRoute2(const SecondPage())),
              child: const Text('TAP TO VIEW FADE ANIMATION 2'),
            ),
          ],
        ),
      ),
    );
  }
}

class FadeRoute1 extends PageRouteBuilder {
  final Widget page;

  FadeRoute1(this.page)
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          barrierColor: Colors.blue,
          transitionDuration: const Duration(seconds: 8),
          reverseTransitionDuration: const Duration(seconds: 8),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: page,
          ),
        );
}

class FadeRoute2 extends PageRouteBuilder {
  final Widget page;

  FadeRoute2(this.page)
      : super(
          pageBuilder: (context, animation, anotherAnimation) => page,
          transitionDuration: const Duration(seconds: 8),
          reverseTransitionDuration: const Duration(seconds: 8),
          transitionsBuilder: (context, animation, anotherAnimation, child) {
            animation = CurvedAnimation(
                curve: Curves.fastLinearToSlowEaseIn,
                parent: animation,
                reverseCurve: Curves.fastOutSlowIn);
            return FadeTransition(
              opacity: animation,
              child: page,
            );
          },
        );
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Fade Transition'),
      ),
    );
  }
}
