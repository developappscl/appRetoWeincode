import 'package:flutter/material.dart';
import 'package:retoweincode01/config/config.dart';

class AppThemeMain {
  final bool isDarkMode;

  AppThemeMain({required this.isDarkMode});

  ThemeData defaultTheme() => ThemeData(
        fontFamily: 'Monserrat',
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
          displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
          displaySmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
          labelLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
          labelMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
          labelSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.mainBrandPrimaryColor),
        ),
      );
}

class AppThemeApp1 {
  final bool isDarkMode;

  AppThemeApp1({required this.isDarkMode});

  ThemeData defaultTheme() => ThemeData(
        fontFamily: 'RobotoMono',
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
          displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
          displaySmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
          labelLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
          labelMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
          labelSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app1BrandPrimaryColor),
        ),
      );
}

class AppThemeApp2 {
  final bool isDarkMode;

  AppThemeApp2({required this.isDarkMode});

  ThemeData defaultTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: 'RaleWay',
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
          displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
          displaySmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
          labelLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
          labelMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
          labelSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app2BrandPrimaryColor),
        ),
      );
}

class AppThemeApp3 {
  final bool isDarkMode;

  AppThemeApp3({required this.isDarkMode});

  ThemeData defaultTheme() => ThemeData(
        useMaterial3: true,
        fontFamily: 'Monserrat',
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
          displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
          displaySmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
          labelLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
          labelMedium: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
          labelSmall: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: AppColors.app3BrandPrimaryColor),
        ),
      );
}
