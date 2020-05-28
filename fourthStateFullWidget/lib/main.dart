import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "State Full",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int dataToChange = 0;
  void changeState() {
    this.setState(() {
      dataToChange += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("State Full Widget"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Text("$dataToChange",style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            )),
            RaisedButton(
                onPressed: changeState,
                shape: OutlineInputBorder(),
                child: Text(
                  "Click Me",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ))
          ]),
        ));
  }
}
