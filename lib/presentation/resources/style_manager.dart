import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/font_manager.dart';

TextStyle _getTextStyle(double fontSize, Color color, FontWeight fontWeight) {
  return TextStyle(
    fontFamily: FontConstants.fontFamily,
    fontSize: fontSize,
    color: color,
    fontWeight: fontWeight,
  );
}

//? light Style
TextStyle getLightStyle({fontSize = FontSizes.s12, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeights.light);
}

//? Regular Style
TextStyle getRegularStyle({fontSize = FontSizes.s14, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeights.regular);
}

//? Medium Style
TextStyle getMediumStyle({fontSize = FontSizes.s14, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeights.medium);
}

//? SemiBold Style
TextStyle getSemiBoldStyle({fontSize = FontSizes.s16, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeights.semiBold);
}

//? Bold Style
TextStyle getBoldStyle({fontSize = FontSizes.s20, required Color color}) {
  return _getTextStyle(fontSize, color, FontWeights.bold);
}

//! this is a class that will be used to manage the styles in the app, we will use it to define the text styles that we will use in the app.
//? Benefit of using a style manager class :
//1. It helps to keep the code organized and maintainable.
//2. It allows us to change the text styles of the app in one place, and it will be reflected in all the places where we use these text styles.
//3. It helps to avoid hardcoding text styles in the code, and it makes it easier to change the text styles of the app in the future if needed.