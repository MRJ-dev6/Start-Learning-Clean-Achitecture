import 'package:flutter/material.dart';

class ColorManager {
  static const Color primaryColor = Color(0xFFED9728);
  static const Color darkgray = Color(0xFF737477);
  static const Color gray = Color(0xFF797979);
  static const Color lightgray = Color(0xFF9E9E9E);
}

//! this is a class that contains all the colors used in the app, and we can use it to change the colors of the app in one place, and it will be reflected in all the places where we use these colors.
//? Benefit of using a color manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the colors of the app in one place, and it will be reflected in all the places where we use these colors.
//3. It helps to avoid hardcoding colors in the code, and it makes it easier to change the colors of the app in the future if needed.
