import 'package:flutter/material.dart';
import 'package:tut_app/presentation/color_manager.dart';
import 'package:tut_app/presentation/style_manager.dart';
import 'package:tut_app/presentation/values_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    //* main colors of the app
    primaryColor: ColorManager.primaryColor,
    primaryColorLight: ColorManager.lightPrimary,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.gray, //? for disabled button
    splashColor: ColorManager.lightPrimary, //? ripple effect color
    //* card view theme
    cardTheme: CardThemeData(
      color: ColorManager.white,
      shadowColor: ColorManager.gray,
      elevation: AppSize.s4,
    ),

    //* app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: ColorManager.primaryColor,
      elevation: AppSize.s4,
      shadowColor: ColorManager.lightPrimary,
      titleTextStyle: getRegularStyle(
        color: ColorManager.white,
        fontSize: AppSize.s16,
      ),
    ),

    //* text theme
    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
        color: ColorManager.darkPrimary,
        fontSize: AppSize.s16,
      ),
      headlineMedium: getRegularStyle(
        color: ColorManager.darkPrimary,
        fontSize: AppSize.s14,
      ),
      titleMedium: getMediumStyle(
        color: ColorManager.primaryColor,
        fontSize: AppSize.s16,
      ),
      bodyLarge: getRegularStyle(
        color: ColorManager.gray,
        fontSize: AppSize.s14,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.gray,
        fontSize: AppSize.s12,
      ),
    ),
    //* button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.gray,
      buttonColor: ColorManager.primaryColor,
      splashColor: ColorManager.lightPrimary,
    ),

    //? elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
          color: ColorManager.white,
          fontSize: AppSize.s17,
        ),
        backgroundColor: ColorManager.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    //* input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      hintStyle: getRegularStyle(color: ColorManager.gray),
      labelStyle: getMediumStyle(color: ColorManager.gray),
      errorStyle: getRegularStyle(color: ColorManager.error),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.gray, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.primaryColor,
          width: AppSize.s1,
        ),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s1),
        borderRadius: BorderRadius.circular(AppSize.s8),
      ),
    ),
  );
}
