import 'package:flutter/material.dart';
import 'package:steam_reborn/Colors/colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: primaryColorDarkTheme,
      primaryColor: primaryColorDarkTheme,
      secondaryHeaderColor: secondaryColorDarkTheme,
      textTheme: const TextTheme(
          headline3: TextStyle(color: Colors.white, fontSize: 20),
          headline4: TextStyle(color: fontColorDarkTheme, fontSize: 16),
          bodyText1: TextStyle(color: Colors.white, fontSize: 16),
          bodyText2: TextStyle(color: fontColorDarkTheme, fontSize: 16)),
      colorScheme: const ColorScheme.dark());

  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: primaryColorLightTheme,
      colorScheme: const ColorScheme.light(),
      textTheme: const TextTheme(
          headline3: TextStyle(color: headerFontColorLightTheme, fontSize: 20),
          headline4: TextStyle(color: fontColorLightTheme2, fontSize: 16),
          bodyText1: TextStyle(color: fontColorLightTheme, fontSize: 16),
          bodyText2: TextStyle(color: fontColorLightTheme2, fontSize: 16)),
      primaryColor: primaryColorLightTheme,
      secondaryHeaderColor: secondaryColorLightTheme);
}
