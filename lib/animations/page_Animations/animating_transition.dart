import 'dart:async';
import 'package:flutter/material.dart';

class MyCustomFadeTransition extends StatefulWidget {
  const MyCustomFadeTransition({super.key});

  @override
  _MyCustomFadeTransitionState createState() => _MyCustomFadeTransitionState();
}

class _MyCustomFadeTransitionState extends State<MyCustomFadeTransition>
    with TickerProviderStateMixin {
  late AnimationController scaleController;
  late Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    scaleController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..addStatusListener(
            (status) {
              if (status == AnimationStatus.completed) {
                Navigator.push(
                  context,
                  AnimatingRoute(
                    const Destination(),
                    const Destination(),
                  ),
                );
                Timer(
                  const Duration(milliseconds: 300),
                  () {
                    // print('worked');
                    scaleController.reset();
                  },
                );
              }
            },
          );

    scaleAnimation =
        Tween<double>(begin: 0.0, end: 10.0).animate(scaleController);
  }

  @override
  void dispose() {
    scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            scaleController.forward();
          },
          child: Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.circle,
            ),
            child: AnimatedBuilder(
              animation: scaleAnimation,
              builder: (c, child) => Transform.scale(
                scale: scaleAnimation.value,
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 245, 245, 245),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Destination extends StatelessWidget {
  const Destination({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Go Back'),
      ),
    );
  }
}

class AnimatingRoute extends PageRouteBuilder {
  final Widget page;
  final Widget route;

  AnimatingRoute(this.page, this.route)
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: route,
          ),
        );
}
