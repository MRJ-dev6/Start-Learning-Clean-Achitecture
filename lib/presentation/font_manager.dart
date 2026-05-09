import 'package:flutter/material.dart';

class FontConstants {
  static const String fontFamily = "Montserrat";
}

class FontWeights {
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight light = FontWeight.w300;
}

class FontSizes {
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
}

// ! this is a class that will be used to manage the fonts in the app, we will use it to define the font family, font weights and font sizes that we will use in the app.
// ? Benefit of using a font manager class :
// 1. It helps to keep the code organized and maintainable.
// 2. It allows us to change the font family, font weights and font sizes of the app in one place, and it will be reflected in all the places where we use these fonts.
// 3. It helps to avoid hardcoding fonts in the code, and it makes it easier to change the fonts of the app in the future if needed.
