import 'package:flutter/material.dart';
import 'package:flutter05/page/Home.dart';

import 'PageA.dart';

class AppNavigation {
  static MaterialApp load() {
    return new MaterialApp(
      // 路由
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new Home(),
        '/pageA': (BuildContext context) => new PageA(),
      },
    );
  }
}
