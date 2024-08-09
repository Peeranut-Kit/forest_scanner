import 'package:flutter/material.dart';
import 'package:forest_scanner/components/card/taskcard.dart';

class LogContent extends StatefulWidget {
  const LogContent({super.key});

  @override
  State<LogContent> createState() => _LogContentState();
}

class _LogContentState extends State<LogContent> {
  int taskQuantity = 6;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(0),
                alignment: Alignment.centerLeft,
                child: Text(
                  "จำนวนงานที่เหลือ : $taskQuantity",
                  style: const TextStyle(fontSize: 30, letterSpacing: 2),
                )),
            Expanded(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemCount: taskQuantity,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {},
                      child: const TaskCard(),
                    );
                  }),
            ),
          ],
        ));
  }
}