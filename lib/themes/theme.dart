import 'package:bankpick_mobile_app/themes/app_colors.dart';
import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
    fontFamily: 'Rubik',
    scaffoldBackgroundColor: AppColors.darkBackground,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.darkBackground),
    inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(
      color: AppColors.red,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.3,
    )),
    colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        secondary: AppColors.grey,
        onSecondary: AppColors.white,
        error: AppColors.red,
        onError: AppColors.red,
        surface: AppColors.black,
        onSurface: AppColors.black),
    textTheme: TextTheme(
        bodySmall: TextStyle(
            color: AppColors.white, fontSize: 17, fontWeight: FontWeight.w600),
        displayLarge: TextStyle(
            fontSize: 27, color: AppColors.white, fontWeight: FontWeight.w500),
        displayMedium: TextStyle(
            fontSize: 30, color: AppColors.white, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(
            fontSize: 18, color: AppColors.white, fontWeight: FontWeight.w500),
        bodyMedium: TextStyle(
            fontSize: 15, color: AppColors.grey, fontWeight: FontWeight.w500)));

final ThemeData lightTheme = ThemeData(
    fontFamily: 'Rubik',
    scaffoldBackgroundColor: AppColors.lightBackground,
    appBarTheme: AppBarTheme(backgroundColor: AppColors.lightBackground),
    inputDecorationTheme: InputDecorationTheme(
        errorStyle: TextStyle(
      color: AppColors.red,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      height: 1.3,
    )),
    colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primary,
        onPrimary: AppColors.white,
        secondary: AppColors.grey,
        onSecondary: AppColors.white,
        error: AppColors.red,
        onError: AppColors.red,
        surface: AppColors.black,
        onSurface: AppColors.white),
    textTheme: TextTheme(
        bodySmall: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        displayLarge: TextStyle(
            fontSize: 27, color: AppColors.black, fontWeight: FontWeight.w700),
        displayMedium: TextStyle(
            fontSize: 30, color: AppColors.black, fontWeight: FontWeight.w600),
        bodyLarge: TextStyle(
            fontSize: 18, color: AppColors.black, fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(
            fontSize: 15, color: AppColors.grey, fontWeight: FontWeight.w500)));
