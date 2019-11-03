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
        primaryColor: Color.fromRGBO(41, 94, 86, 1.0),
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.greenAccent[700],
      ),
      home: App(),
    );
  }
}