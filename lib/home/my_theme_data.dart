import 'package:flutter/material.dart';
import 'package:islami/home/colors.dart';

class MyThemeData{

  static final ThemeData lightMode = ThemeData(
    
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),

    bottomNavigationBarTheme:BottomNavigationBarThemeData(
      selectedItemColor: AppColors.balckColor,
      unselectedItemColor: AppColors.whiteColor,
      showUnselectedLabels: true,
      
    ) ,



    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.balckColor,
        fontSize : 30 ,
        fontWeight:FontWeight.bold,
      ),
    ),
    
  );
}