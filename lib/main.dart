import 'package:flutter/material.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/surah_details/surah_deatails.dart';

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
        SurahDetails.routName: (context) => SurahDetails()
      },
      initialRoute: HomeScreen.routeName,
      theme: ThemeData(
          primaryColor: Color(0XFFB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Color(0XFFB7935F)
          ),
          cardColor: Colors.white,
          appBarTheme: AppBarTheme(
              elevation: 0,
              centerTitle: true,
              iconTheme: IconThemeData(color: Colors.black),
              color: Colors.transparent,
              titleTextStyle:
                  TextStyle(color: Color(0XFF242424), fontSize: 30)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Colors.brown,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
          )),
    );
  }
}
