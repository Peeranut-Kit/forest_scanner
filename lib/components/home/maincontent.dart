import 'package:flutter/material.dart';
//import 'package:forest_scanner/components/home/taskcard.dart';

class Maincontent extends StatefulWidget {
  const Maincontent({super.key});

  @override
  State<Maincontent> createState() => _MaincontentState();
}

class _MaincontentState extends State<Maincontent> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {},
                child: const Card(
                  child: Column(),
                ),
              );
            }
        )
    );
  }
}
