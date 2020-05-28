import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "LOGIN UI",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Login());
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomPadding: true,
      // resizeToAvoidBottomInset: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/bg.png",
            fit: BoxFit.cover,
            color: Colors.white24,
            colorBlendMode: BlendMode.plus,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(20),
                  child: Image.asset(
                    "assets/bachi.png",
                    width: 100,
                    height: 100,
                  )),
              Stack(
                children: <Widget>[
                  Container(
                    height: 250,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.white60,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 0),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "User Name",
                                      border: InputBorder.none,
                                      filled: true,
                                      fillColor: Colors.grey[200],
                                      prefixIcon: Icon(Icons.account_box)),
                                )),
                            TextField(
                              decoration: InputDecoration(
                                  hintText: "User Name",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.grey[200],
                                  prefixIcon: Icon(Icons.remove_red_eye)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  "Forget Password ?",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            MaterialButton(
                              onPressed: () {},
                              minWidth: 200,
                              color: Colors.red,
                              splashColor: Colors.red[800],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              child: (Text(
                                "Login",
                                style: TextStyle(color: Colors.white),
                              )),
                            )
                          ],
                        )),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
