import 'package:Navigation/First.dart';
import "package:flutter/material.dart";
import 'First.dart';
import "Slide.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          MaterialButton(
            onPressed: () {
              Navigator.push(
                  context,
                  // For Simple page use
                  // MaterialPageRoute(builder: (context) => FirstPage()),
                  // For Slide
                  SlideRightRoute(page: FirstPage()));
            },
            child: Text("GO TO FIRST"),
            color: Colors.amber,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context, "/second");
            },
            child: Text("GO TO SECOND"),
            color: Colors.amber,
          )
        ],
      )),
    );
  }
}
