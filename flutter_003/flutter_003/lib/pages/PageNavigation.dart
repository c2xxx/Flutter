import 'package:flutter/material.dart';

class PageNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("导航页"),
      ),
      body: Column(
        children: <Widget>[
          Text('内容'),
          Text('内容'),
          Text('内容'),
          Text('内容'),
          FlatButton(
            child: Text('page01'),
            onPressed: () => {Navigator.pushNamed(context, '/page01')},
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return FlatButton(
                    child: Text('page0$index'),
                    onPressed: () =>
                        {Navigator.pushNamed(context, '/page0$index')},
                  );
                }),
          )
        ],
      ),
    );
  }
}
