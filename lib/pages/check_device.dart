import 'package:flutter/material.dart';

class CheckDevice extends StatefulWidget {
  const CheckDevice({super.key});

  @override
  State<CheckDevice> createState() => _CheckDeviceState();
}

class _CheckDeviceState extends State<CheckDevice> {
  bool lidar = true;
  bool gps = true;
  bool camera = false;
  bool sdCard = true;

  String boolToString(bool data) {
    return data == true ? "Ready" : "Not Ready";
  }

  bool checkOverall() {
    return lidar && gps && camera && sdCard;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Device Ready Checking'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: const Text("Topic"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Text("Lidar status : ${boolToString(lidar)}"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Text("GPS status : ${boolToString(gps)}"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Text("Camera status : ${boolToString(camera)}"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Text("SD card status : ${boolToString(sdCard)}"),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(15),
            child: Text("Check every device : ${boolToString(checkOverall())}"),
          ),
          FloatingActionButton(
              onPressed: () {
                /*Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => {}));*/
              },
              child: const Text("Start",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)))
        ],
      ),
    );
  }
}
