import 'package:flutter/material.dart';

class MyCustomAnimatedBtn extends StatefulWidget {
  const MyCustomAnimatedBtn({super.key});

  @override
  _MyCustomAnimatedBtnState createState() => _MyCustomAnimatedBtnState();
}

class _MyCustomAnimatedBtnState extends State<MyCustomAnimatedBtn>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )
      ..forward()
      ..repeat(reverse: true);
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) {
            return Container(
              decoration: ShapeDecoration(
                color: Colors.white.withOpacity(0.5),
                shape: const CircleBorder(),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  8.0 * animationController.value,
                ),
                child: child,
              ),
            );
          },
          child: Container(
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child: IconButton(
              onPressed: () {
                print('button tapped');
              },
              color: Colors.blue,
              icon: const Icon(
                Icons.calendar_today,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
