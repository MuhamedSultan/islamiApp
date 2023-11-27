import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/ui/theme/theme.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash-screen";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
    return Container(
      child: Image.asset(
        provider.themeMode==ThemeMode.light
            ? "assets/images/splash.png"
            : "assets/images/dark_splash.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
