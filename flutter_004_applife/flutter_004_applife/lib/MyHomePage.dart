import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              child: Text('跳页'),
              onPressed: () {
                Navigator.pushNamed(context, "/page02");
              },
            ),
            FlatButton(
              child: Text('跳页page04'),
              onPressed: () {
                Navigator.pushNamed(context, "/page04");
              },
            ),
            FlatButton(
              child: Text('跳页page05'),
              onPressed: () {
                Navigator.pushNamed(context, "/page05");
              },
            ),
            FlatButton(
              child: Text('跳页page06'),
              onPressed: () {
                Navigator.pushNamed(context, "/page06");
              },
            ),
            FlatButton(
              child: Text('跳页page07'),
              onPressed: () {
                Navigator.pushNamed(context, "/page07");
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
