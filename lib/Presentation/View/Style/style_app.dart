import 'package:flutter/material.dart';

final class ColorsApp {
  // * Light styles
  static Color orange = const Color.fromARGB(255, 245, 136, 20);
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color darkPurple = Color.fromARGB(255, 4, 4, 54);
}

final class TextStylesApp {
  // Todo: Light textStyles
  static List<TextStyle> lightPoppinsFonts = [
    // * Poppins regular
    TextStyle(
    fontSize: 14,
    color: ColorsApp.black,
    fontWeight: FontWeight.normal,
    fontFamily: 'Poppins'
  ),
  // * Poppins regular bold
  TextStyle(
    fontSize: 14,
    color: ColorsApp.black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Poppins'
  ),
  // * Poppins medium
  TextStyle(
    fontSize: 25,
    color: ColorsApp.black,
    fontFamily: 'Poppins'
  ),
  // * Poppins medium bold
  TextStyle(
    fontSize: 25,
    color: ColorsApp.black,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold
  ),
  // * Poppins large
  TextStyle(
    fontSize: 30,
    color: ColorsApp.black,
    fontFamily: 'Poppins',
  ),
  // * Poppins large bold
  TextStyle(
    fontSize: 50,
    color: ColorsApp.black,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins'
  )
];

  // Todo: Dark textStyles
  static List<TextStyle> darkPoppinsFonts = [
        // * Poppins regular
    TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ColorsApp.white,
    fontFamily: 'Poppins'
  ),
  // * Poppins regular bold
  TextStyle(
    fontSize: 14,
    color: ColorsApp.white,
    fontWeight: FontWeight.w300,
    fontFamily: 'Poppins/'
  ),
  // * Poppins medium
  TextStyle(
    fontSize: 25,
    color: ColorsApp.white,
    fontFamily: 'Poppins'
  ),
  // * Poppins medium bold
  TextStyle(
    fontSize: 22,
    color: ColorsApp.white,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.bold
  ),
  // * Poppins large
  TextStyle(
    fontSize: 30,
    color: ColorsApp.white,
    fontFamily: 'Poppins',
  ),
  // * Poppins large bold
  TextStyle(
    fontSize: 30,
    color: ColorsApp.white,
    fontWeight: FontWeight.bold,
    fontFamily: 'Poppins'
  )
  ];
  


}

final class ThemeApp {
  static ThemeData themeDataLight = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: ColorsApp.orange,
    brightness: Brightness.light
  );

  static ThemeData themeDataDark = ThemeData.dark(
    useMaterial3: true
  );

}