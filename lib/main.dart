import 'package:flutter/material.dart';

import 'app/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.green[700],
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.greenAccent[700],
      ),
      home: App(),
    );
  }
}