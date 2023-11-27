import 'package:flutter/material.dart';

class Themes {
  static const Color lightPrimaryColor = Color(0XFFB7935F);
  static const Color darkPrimaryColor = Color(0XFF141A2E);
  static const Color lightMainTextColor = Color(0XFF242424);
  static const Color darkMainTextColor = Color(0XFFF8F8F8);
  static const Color darkAccentColor = Color(0XFFFACC1D);

  static var lightTheme = ThemeData(
      primaryColor: lightPrimaryColor,
      hintColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: lightPrimaryColor),
      cardColor: Colors.white,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          color: Colors.transparent,
          titleTextStyle: TextStyle(color: lightMainTextColor, fontSize: 30)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
          headline3: TextStyle(color: lightMainTextColor, fontSize: 32),
          headline5: TextStyle(color: lightMainTextColor, fontSize: 24),
          bodyText1: TextStyle(color: lightMainTextColor, fontSize: 24),
          bodyText2: TextStyle(color: lightMainTextColor, fontSize: 20)),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
      ));

  static var darkTheme = ThemeData(
      primaryColor: darkPrimaryColor,
      hintColor: darkAccentColor,
      scaffoldBackgroundColor: Colors.transparent,
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: darkAccentColor),
      cardColor: darkPrimaryColor,
      appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          color: Colors.transparent,
          titleTextStyle: TextStyle(color: darkMainTextColor, fontSize: 30)),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ),
      textTheme: const TextTheme(
          headline3: TextStyle(color: darkMainTextColor, fontSize: 32),
          headline5: TextStyle(color: darkMainTextColor, fontSize: 24),
          bodyText1: TextStyle(color: darkMainTextColor, fontSize: 24),
          bodyText2: TextStyle(color: darkMainTextColor, fontSize: 20)),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: darkPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(24), topLeft: Radius.circular(24))),
      ));
}
