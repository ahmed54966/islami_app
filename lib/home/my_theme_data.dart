import 'package:flutter/material.dart';

class MyThemeData{
  static final ThemeData lightMode = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
    )
  );
}