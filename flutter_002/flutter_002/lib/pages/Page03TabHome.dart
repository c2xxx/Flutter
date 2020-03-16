import 'package:flutter/material.dart';
import 'package:flutter_002/pages/Page02Second.dart';

class Page03TabHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Page03TabHomeState();
  }
}

class Page03TabHomeState extends State<Page03TabHome>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(length: 3, vsync: this);
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
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          labelColor: Colors.deepPurpleAccent,
          unselectedLabelColor: Colors.black26,
          tabs: [
            new Tab(
              text: "今日",
              icon: new Icon(Icons.brightness_5),
            ),
            new Tab(
              text: "课表",
              icon: new Icon(Icons.map),
            ),
            new Tab(
              text: "操场",
              icon: new Icon(Icons.directions_run),
            ),
          ],
        ),
      ),
    );
  }
}
