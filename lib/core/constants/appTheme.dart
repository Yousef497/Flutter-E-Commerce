import 'package:flutter/material.dart';

import 'color.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "PlayfairDisplay",
  textTheme: const TextTheme(

    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: AppColors.white
    ),

    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: AppColors.white
    ),

    bodyText1: TextStyle(
        fontSize: 18,
        color: Colors.grey
    ),
  ),
  primarySwatch: Colors.blue,
);

ThemeData themeArabic = ThemeData(
  fontFamily: "Cairo",
  textTheme: const TextTheme(

    headline1: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: AppColors.white
    ),

    headline2: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: AppColors.white
    ),

    bodyText1: TextStyle(
        fontSize: 18,
        color: Colors.grey
    ),
  ),
);

