import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration(seconds:2),
          () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
          });
    return Container(
      child: Image.asset("assets/images/splash.png"),
    );
  }
}
