import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Calculator",
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Calculator());
  }
}

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int firstNum;
  int secondNum;
  var res;
  String displayToText = "";
  String operationToPerform;
  calculate(String val) {
    if (val == "C") {
      res = "";
      displayToText = "";
      firstNum = 0;
      secondNum = 0;
    } else if (val == "+" || val == "-" || val == "*" || val == "/") {
      operationToPerform = val;
      firstNum = int.parse(displayToText);
      displayToText = "";
      res = "";
    } else if (val == "=") {
      debugPrint("===" + operationToPerform);
      secondNum = int.parse(displayToText);
      if (operationToPerform == "+")
        res = (firstNum + secondNum).toString();
      else if (operationToPerform == "-")
        res = (firstNum - secondNum).toString();
      else if (operationToPerform == "/")
        res = (firstNum / secondNum).toString();
      else if (operationToPerform == "x")
        res = (firstNum * secondNum).toString();
    } else {
      debugPrint("else" + val);

      res = (displayToText + val).toString();
    }
    setState(() {
      displayToText = res;
    });
  }

  Widget button(String buttonText) {
    return Expanded(
        child: OutlineButton(
      padding: EdgeInsets.all(30),
      onPressed: () => calculate(buttonText),
      child: Text(
        buttonText,
        style: TextStyle(fontSize: 20),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomRight,
              child: Text(
                "$displayToText",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: <Widget>[
                button("9"),
                button("8"),
                button("7"),
                button("+"),
              ],
            ),
            Row(children: <Widget>[
              button("6"),
              button("5"),
              button("4"),
              button("-"),
            ]),
            Row(
              children: <Widget>[
                button("3"),
                button("2"),
                button("1"),
                button("x"),
              ],
            ),
            Row(
              children: <Widget>[
                button("C"),
                button("0"),
                button("="),
                button("/"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
