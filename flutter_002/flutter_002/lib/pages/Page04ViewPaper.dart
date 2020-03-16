import 'package:flutter/material.dart';
import 'package:flutter_002/pages/Page02Second.dart';

class Page04ViewPaper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page04ViewPaperState();
  }
}

class Page04ViewPaperState extends State<Page04ViewPaper>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
    controller.index = 1;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TabHome'),
      ),
      drawer: Drawer(),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Page02Second("A"),
          new Page02Second("B"),
          new Page02Second("C"),
        ],
      ),
    );
  }
}
