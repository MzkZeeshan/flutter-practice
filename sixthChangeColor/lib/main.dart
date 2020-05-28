import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> colorList = [
    Color(0xff443365),
    Color(0xffe9e9ef),
    Color(0xff9e9e9e),
    Color(0xff44336)

  ];
  Color color= Color(0xfff44336);
  int index;
  
  void changeColor()
  {
    setState(() {
      index=Random().nextInt(colorList.length); 
      color=colorList[index];
      
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color
        ),
      child: FlatButton(
        child: Text("Chaneg Color",
      style:TextStyle(
        fontSize: 30,
        fontStyle: FontStyle.italic,
        color:Colors.white
      )),
      onPressed: changeColor,

      ),
    );
  }
}
