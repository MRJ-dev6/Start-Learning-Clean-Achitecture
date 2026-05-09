import 'package:flutter/material.dart';

class ColorManager {
  static const Color primaryColor = Color(0xFFED9728); //! orange color
  static const Color gray = Color(0xFF797979); // gray color
  static const Color lightgrey = Color(0xFF9E9E9E); // light gray color

  //? new colors
  static Color darkPrimary = const Color(0xffd17d11); //? dark primary color
  static Color lightPrimary = const Color(0xffffc078); //? light primary color
  static Color grey1 = const Color(0xff707070); //? dark grey color
  static Color white = const Color(0xffFFFFFF); // white color
  static Color error = const Color(0xffe61f34); //! red color
}

//! this is a class that contains all the colors used in the app, and we can use it to change the colors of the app in one place, and it will be reflected in all the places where we use these colors.
//? Benefit of using a color manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the colors of the app in one place, and it will be reflected in all the places where we use these colors.
//3. It helps to avoid hardcoding colors in the code, and it makes it easier to change the colors of the app in the future if needed.
