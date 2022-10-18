import 'package:flutter/material.dart';
import 'package:places/src/res/colors.dart';
import 'package:places/src/res/typography.dart';

ThemeData lightThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
  ),
  cardColor: Color(0xFFF5F5F5),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      color: Color(0xFF3B3E5B),
    ),
    labelColor: Color(0xFFFFFFFF),
    unselectedLabelColor: Color(0xFF7C7E92),
    labelStyle: AppTypography.headline4,
    unselectedLabelStyle: AppTypography.headline4,
  ),
  scaffoldBackgroundColor: Colors.white,
  secondaryHeaderColor: Colors.grey.shade100,
  textTheme: TextTheme(
    headline1: AppTypography.headline1.copyWith(color: AppColors.primaryColor),
    headline2: AppTypography.headline2.copyWith(color: AppColors.primaryColor),
    headline3: AppTypography.headline3.copyWith(color: AppColors.primaryColor),
    headline4: AppTypography.headline4.copyWith(color: AppColors.primaryColor),
    headline5: AppTypography.headline5.copyWith(color: AppColors.primaryColor),
    bodyText1: AppTypography.headline5.copyWith(color: AppColors.primaryColor),
    bodyText2: AppTypography.headline5.copyWith(color: AppColors.tertiaryColor),
    button: AppTypography.headline5.copyWith(
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.light(
      primary: const Color(0xFF3B3E5B),
      secondary: const Color(0xFF7C7E92).withOpacity(0.56),
    ),
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: AppColors.secondaryColor,
    unselectedItemColor: Colors.grey.shade500,
    type: BottomNavigationBarType.fixed,
  ),
);

ThemeData darkThemeData = ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.darkBgColor,
  ),
  cardColor: Color(0xFF1A1A20),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      color: Color(0xFFFFFFFF),
    ),
    labelColor: Color(0xFF3B3E5B),
    unselectedLabelColor: Color(0xFF7C7E92),
    labelStyle: AppTypography.headline4,
    unselectedLabelStyle: AppTypography.headline4,
  ),
  scaffoldBackgroundColor: AppColors.darkBgColor,
  secondaryHeaderColor: AppColors.secondaryDarkBgColor,
  textTheme: TextTheme(
    headline1: AppTypography.headline1.copyWith(color: Colors.white),
    headline2: AppTypography.headline2.copyWith(color: Colors.white),
    headline3: AppTypography.headline3.copyWith(color: Colors.white),
    headline4: AppTypography.headline4.copyWith(color: Colors.white),
    headline5: AppTypography.headline5.copyWith(color: Colors.white),
    bodyText1: AppTypography.headline5.copyWith(color: Colors.white),
    bodyText2: AppTypography.headline5.copyWith(color: AppColors.tertiaryColor),
    button: AppTypography.headline5.copyWith(
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
  ),
  buttonTheme: ButtonThemeData(
    colorScheme: ColorScheme.dark(
      primary: Color(0xFFFFFFFF),
      secondary: Color(0xFF7C7E92).withOpacity(0.56),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkBgColor,
    selectedItemColor: Colors.white,
    unselectedItemColor: Colors.white54,
    type: BottomNavigationBarType.fixed,
  ),
);
