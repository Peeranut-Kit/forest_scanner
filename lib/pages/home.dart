import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

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
            title: Text(widget.title),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(text: "1"),
                Tab(text: "2"),
                Tab(child: Text("3"))
              ],
            )),
        body: TabBarView(controller: _tabController, children: const [
          Center(
            child: Text("1"),
          ),
          Center(
            child: Text("2"),
          ),
          Center(
            child: Text("3"),
          ),
        ]));
  }
}
