import 'package:flutter/material.dart';


final class ColorsApp {
  // * Light styles
  static const Color orange = Color.fromARGB(255, 245, 136, 20);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color blue = Color(0xFF3533cd);
  static const Color lightBlue = Color(0xFF5de0e6);
  static const Color highBlue = Color(0xFF004aad);
  static const Color yellowContainer = Color.fromARGB(255, 255, 188, 101);
  static const Color darkPurple = Color.fromARGB(255, 4, 4, 54);
  static const Color redPink = Color(0xFFFF5757);
  static const Color pinkPurple = Color(0xFF8c52FF);
  static const Color darkPink = Color(0xFFb93685);
  static const Color pink = Color(0xFFFF66c4);
  static const Color yellowLight = Color(0xFFFFFd59);
  static const Color lightGrey = Color.fromARGB(255, 247, 246, 246);
  static const Color red = Color(0xFFFF3131);
  static const Color redOrange = Color(0xFFFF914d);
  static const Color lightPink = Color(0XFFebb0ff);
  static const Color lightGreen = Color(0xFFcdffd8);
  static const Color lowerBlue = Color(0xFF94b9ff);
  
}

final class ThemeApp {
  static ThemeData themeDataLight = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: ColorsApp.white,
    colorSchemeSeed: ColorsApp.white
  );


  static ThemeData themeDataDark = ThemeData.dark(
    useMaterial3: true,
  );

}
