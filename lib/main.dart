import 'package:flutter/material.dart';

import 'app/app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Color.fromRGBO(116, 228, 142, 1.0),
      ),
      home: App(),
    );
  }
}