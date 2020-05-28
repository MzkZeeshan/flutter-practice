import "package:flutter/material.dart";

class Second extends StatelessWidget {
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
        child: Text("Second Page"),
        color: Colors.amber,
      )),
    );
  }
}
