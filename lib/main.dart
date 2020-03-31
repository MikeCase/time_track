import 'package:flutter/material.dart';

import 'create_job.dart';

import 'views/main.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/create_job': (BuildContext context) => CreateJob(),
      },
      home: MainPage(),
    );
  }
}
