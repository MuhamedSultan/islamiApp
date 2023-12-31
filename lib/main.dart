import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_deatails.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/theme/theme.dart';
import 'home/quran/surah_details/surah_deatails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahDetails.routName: (context) => SurahDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
      initialRoute: SplashScreen.routeName,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: Themes.themeMode,
    );
  }
}
