import "package:flutter/material.dart";

//  this package provide basic wiget
//  in flutter every thin is widget like bitton and text
void main() {
  runApp(mayapp());
  // runApp is a widget
}
// two type wiget
// stateless widget create statless widget stl+enter
//statefull widget

class mayapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Sample App",
        // this sample app title view in when you closs app and watch in hostroy 
        theme: ThemeData(primarySwatch: Colors.red 
        // primary swatch wo he jaha apko button ke click per thora red mile
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("Title")),
            body: Center(
              child: Text("Mzk Zeehan as a Developer",
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.lineThrough,
                letterSpacing: 2,
                wordSpacing: 10,
                // background: Paint()..color=Colors.black..style=PaintingStyle.stroke
                // border way
              ),
              textAlign: TextAlign.right,
              maxLines: 1,
              overflow: TextOverflow.fade,
              
              ),
            )));
  }
}
