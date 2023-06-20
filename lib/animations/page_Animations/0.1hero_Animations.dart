// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HreoAnimationsExample extends StatefulWidget {
  const HreoAnimationsExample({super.key});

  @override
  State<HreoAnimationsExample> createState() => _HreoAnimationsExampleState();
}

class _HreoAnimationsExampleState extends State<HreoAnimationsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: List.generate(
              data.length,
              (index) => ListTile(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SecondPage(
                              index: index,
                            ))),
                    trailing:
                        Hero(tag: data[index], child: const Icon(Icons.person)),
                    title: Text(data[index].name),
                  )),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class SecondPage extends StatefulWidget {
  int index;
  SecondPage({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
                tag: data[widget.index],
                child: Column(
                  children: [
                    Text(data[widget.index].name),
                    Text(data[widget.index].details)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class ProductModel {
  int id;
  String prtice;
  String name;
  String details;
  ProductModel({
    required this.id,
    required this.prtice,
    required this.name,
    required this.details,
  });
}

List<ProductModel> data = [
  ProductModel(
      id: 1,
      name: 'iphone 12',
      prtice: '12,99 \$',
      details: 'its height level of quility and high performance Mobile'),
  ProductModel(
      id: 1,
      name: 'iphone 13',
      prtice: '13,99 \$',
      details: 'its height level of quility and high performance Mobile'),
  ProductModel(
      id: 1,
      name: 'iphone 11',
      prtice: '11,99 \$',
      details: 'its height level of quility and high performance Mobile'),
];
