import 'package:flutter/material.dart';
import 'dart:async';
// import 'config/Slide.dart';
// import 'home.dart';
class Splash extends StatefulWidget {
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;
  @override
  void initState() {
    super.initState();
    controller =  AnimationController(duration: const Duration(seconds: 5), vsync: this);
    animation = Tween<double>(begin: 0, end: 800).animate(controller);
    debugPrint("Developer"+animation.toString());
    // Timer(Duration(seconds: 3),()=>Navigator.push(context, SlideRightRoute(page : Home())));
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("ANIMATION" + animation.value.toString());

    return Container(
        color: Colors.white,
        child: Center(
            child: Image.asset(
          "assets/deals2.png",
          height: 70,
          width: 200,
          fit: BoxFit.fill,
        )));
  }
}
