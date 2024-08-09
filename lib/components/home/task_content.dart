import 'package:flutter/material.dart';
import 'package:forest_scanner/components/card/taskcard.dart';
import 'package:forest_scanner/pages/pretask.dart';

class TaskContent extends StatefulWidget {
  const TaskContent({super.key});

  @override
  State<TaskContent> createState() => _TaskContentState();
}

class _TaskContentState extends State<TaskContent> {
  int taskQuantity = 9;

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
                      onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => const Pretask()));
                },
                      child: const TaskCard(),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                height: 75,
                width: 175,
                child: FloatingActionButton.extended(
                  onPressed: null,
                  label: const Text(
                    "Fetch Data",
                    style: TextStyle(fontSize: 30),
                  ),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  splashColor: Colors.brown,
                  highlightElevation: 50,
                ),
              ),
            )
          ],
        ));
  }
}
