import 'package:flutter/material.dart';
import 'package:flutter_002/pages/Page04ViewPaper.dart';

class Page01Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new Page01HomeState();
  }
}

class Page01HomeState extends State<Page01Home> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            title: Text('银行'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_balance), title: Text('超市')),
        ],
        onTap: (index) => {
//          print("点击$index")

          setState(() {
            _currentIndex = index;
          })
        },
      ),
      body: Column(
        children: <Widget>[
          Text('Page01Home'),
          FlatButton(
            child: Text('click'),
            onPressed: () => {Navigator.pushNamed(context, '/page02')},
          ),
          FlatButton(
            child: Text('page03'),
            onPressed: () => {Navigator.pushNamed(context, '/page03')},
          ),
          FlatButton(
            child: Text('page04'),
            onPressed: () => {
              Navigator.pushAndRemoveUntil(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new Page04ViewPaper()),
                  (route) => route == null)
//          Navigator.pushNamed(context, '/page04');
            },
          ),
          FlatButton(
            child: Text('page05'),
            onPressed: () => {Navigator.pushNamed(context, '/page05')},
          )
        ],
      ),
    );
  }
}
