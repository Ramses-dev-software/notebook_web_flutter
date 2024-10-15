import 'package:flutter/material.dart';

final class ColorsApp {
  // * Light styles
  static const Color orange = Color.fromARGB(255, 245, 136, 20);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
  static const Color darkPurple = Color.fromARGB(255, 4, 4, 54);
}

const _fontFamily = 'Afacad_Flux';
const _fontFamily2 = 'Roboto';

class RobotoFont {
  static const TextStyle robotoBlack = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle robotoBlackItalic = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle robotoBold = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle robotoBoldItalic = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle robotoRegular = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle robotoItalic = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle robotoLight = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle robotoLightItalic = TextStyle(
    fontFamily: _fontFamily2,
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic
  );
}

class AfacadFluxFont {
  // Definiciones de TextStyle con diferentes pesos y estilos
  static const TextStyle afacadBlack = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w900,
  );

  static const TextStyle afacadBold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w700,
  );

  static const TextStyle afacadExtraLight = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w200,
  );

  static const TextStyle afacadLight = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w300,
  );

  static const TextStyle afacadMedium = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle afacadRegular = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle afacadSemiBold = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w600,
  );

  static const TextStyle afacadThin = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w100,
  );
}



final class ThemeApp {
  static ThemeData themeDataLight = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light
  );

  static ThemeData themeDataDark = ThemeData.dark(
    useMaterial3: true,
  );

}