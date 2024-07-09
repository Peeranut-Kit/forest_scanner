import 'package:flutter/material.dart';

class DoneContent extends StatefulWidget {
  const DoneContent({super.key});

  @override
  State<DoneContent> createState() => _DoneContentState();
}

class _DoneContentState extends State<DoneContent> {
  int taskQuantity = 4;
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
                      child: const Card(
                        margin: EdgeInsets.all(5),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Task: #Axxxxxxxx",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Topic: N/A",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Detail: N/A",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
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