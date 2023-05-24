import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class MyCustomGridView1 extends StatefulWidget {
  const MyCustomGridView1({super.key});

  @override
  _MyCustomGridView1State createState() => _MyCustomGridView1State();
}

class _MyCustomGridView1State extends State<MyCustomGridView1> {
  @override
  Widget build(BuildContext c) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('VIEW ANIMATING GRIDVIEW'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const GridView1()),
            );
          },
        ),
      ),
    );
  }
}

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

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
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          padding: EdgeInsets.all(w / 60),
          crossAxisCount: columnCount,
          children: List.generate(
            50,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: columnCount,
                child: FadeInAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    child: Container(
                      margin: EdgeInsets.only(
                          bottom: w / 30, left: w / 60, right: w / 60),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
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
