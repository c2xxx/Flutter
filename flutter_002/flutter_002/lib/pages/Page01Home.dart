import 'package:flutter/material.dart';

class Page01Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page01HomeState();
  }
}

class Page01HomeState extends State<Page01Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        
      ),
      body: Column(
        children: <Widget>[
          Text('Page01Home'),
          FlatButton(
            child: Text('click'),
            onPressed: () => {
              Navigator.pushNamed(context, '/second')
            },
          )
        ],
      ),
    );
  }
}
