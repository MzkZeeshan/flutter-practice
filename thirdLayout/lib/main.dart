import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "LAYOUT ",
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
            appBar: AppBar(
              title: Text("LAYOUT"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // FOR VERTICAL ALIGMENT

                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "MzkZeeshan",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Material Button 1"),
                        shape: OutlineInputBorder(),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text("Materail Button 2"),
                        shape: OutlineInputBorder(),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text("I LOVE ISLAM",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ))),
                ],
              ),
            )));
  }
}
