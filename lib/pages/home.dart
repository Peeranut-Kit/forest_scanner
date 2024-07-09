import 'package:flutter/material.dart';
import 'package:forest_scanner/components/home/done_content.dart';
import 'package:forest_scanner/components/home/log_content.dart';
import 'package:forest_scanner/components/home/task_content.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            title: const Padding(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
              child: Text(
                "หน้าหลัก",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(
                    child: Text(
                  "งานที่เหลือ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
                Tab(
                    child: Text(
                  "งานที่สำเร็จ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),Tab(
                    child: Text(
                  "ประวัติการอัพโหลด",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
              ],
            )),
        body: TabBarView(controller: _tabController, children: const [
          TaskContent(),
          DoneContent(),
          LogContent(),
        ]));
  }
}
