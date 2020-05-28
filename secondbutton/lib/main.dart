import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "button", 
        theme: ThemeData(primarySwatch: Colors.red),
        home: Scaffold(
          appBar: AppBar(
            
            title: Text("Button"),
          ),
          body: Center(
            //   child: FlatButton(
            //     splashColor: Colors.green,
            //     padding: EdgeInsets.all(20.0),
            //     highlightColor: Colors.red,
            //     onPressed: (){},
            // child: Text("First Flat Button"),
            // child: RaisedButton(
            //   onPressed: (){},
            //   padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
            //   color: Colors.green,
            //   // for given backgroun color
            //   splashColor: Colors.cyan,
            //   // on Click hover
            //   highlightColor: Colors.blue,
            //   // Color when you clicked 
            //   elevation: 20,
            //   // elevation beacause its a 
            //   shape: Border.all(width: 2,color: Colors.black),
            // child: Text("RAISED BUTTON",
            
            // style: TextStyle(
            //   fontSize: 20
            // ),),
            // ) 
// its similar to Raised Button
            // child: MaterialButton(
            //   child: Text("Material Button"),
            //   splashColor: Colors.red,
            //   onPressed: (){},
            //   elevation: 20,
            //   color: Colors.green,
            //   // shape: RoundedRectangleBorder(
            //   //   borderRadius: BorderRadius.circular(5)
            //   // )
            //   // FOR APPLY RADIUS WITH YOUR CHOISE
            //   // shape:StadiumBorder() , 
            //   // FOR FIXED BORDER

            //   shape: OutlineInputBorder()
            //   // GIVE ROUND AND ALSO GIEVE BORDER STOKES

            //   // shape:Border.all(color: Colors.red[100],width: 2)

            //   ),



            // ICON BUTTON
            child: IconButton(
              onPressed: (){},
              icon:Icon(Icons.add_alarm),
              iconSize: 50,
              tooltip: "ALERM TIME",
              splashColor: Colors.amber  ,

            ),

          
          )
          
        
          
          ),
        );
  }
}
