import 'package:flutter/material.dart';

class SettingsProvidr extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode="en";

  void changeLanguage(String newLanguage){
    languageCode=newLanguage;
    notifyListeners();
  }
  void changeMode(ThemeMode newMode) {
    themeMode = newMode;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  String changeBackgroundImage() {
    return themeMode == ThemeMode.light
        ? "assets/images/main_bg.png"
        : "assets/images/main_dark_bg.png";
  }
  bool isDarkEnabled() {
    return themeMode == ThemeMode.dark;
  }
}
