import 'package:flutter/material.dart';
import 'dart:async';
import 'config/Slide.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[Text("HOME")],
      ),
    ));
  }
}
