

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MyCustomGridView extends StatefulWidget {
  const MyCustomGridView({super.key});

  @override
  _MyCustomGridViewState createState() => _MyCustomGridViewState();
}

class _MyCustomGridViewState extends State<MyCustomGridView> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('VIEW ANIMATING GRIDVIEW'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridView2()),
            );
          },
        ),
      ),
    );
  }
}

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 3;

    return Scaffold(
      appBar: AppBar(
          title: const Text("Go Back"),
          centerTitle: true,
          
          backgroundColor: Colors.blue,
          ),
      body: AnimationLimiter(
        child: GridView.count(
          physics:
              const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(w / 60),
          crossAxisCount: columnCount,
          children: List.generate(
            30,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: columnCount,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  scale: 1.5,
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: w / 30, left: w / 60, right: w / 60),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}