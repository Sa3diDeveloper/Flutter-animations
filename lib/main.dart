import 'package:animations/animations/buttom_navigation_bar/btn_nva_bar_2.dart';
import 'package:animations/animations/other/0.0exapnandable_widget.dart';
import 'package:animations/animations/other/0.1exapnandable_widget.dart';
import 'package:animations/animations/other/1.0animated_switch.dart';
import 'package:animations/animations/other/1.1animated_switch.dart';
import 'package:animations/animations/other/2.0slidable_cards.dart';
import 'package:animations/animations/page_Animations/0.1hero_Animations.dart';
import 'package:animations/animations/page_Animations/0.2hero_Animations.dart';
import 'package:animations/animations/page_Animations/0.2hero_Animations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const HreoAnimationsExample1());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HreoAnimationsExample(),
    );
  }
}
