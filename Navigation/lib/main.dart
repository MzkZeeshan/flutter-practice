import 'package:flutter/material.dart';
import 'Home.dart';
import 'Second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Navigation",
        routes: {"/second": (conetext) => Second()},
        theme: ThemeData(primarySwatch: Colors.amber),
        home: HomePage());
  }
}
