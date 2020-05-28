import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation"),
      ),
      body: Center(
          child: MaterialButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("Go To Home"),
        color: Colors.amber,
      )),
    );
  }
}
