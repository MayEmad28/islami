import 'package:flutter/material.dart';

class my_theme{
  static Color blackColor=Color(0xff242424);
  static Color primaryColor_light=Color(0xffB7935F);
  static ThemeData light_theme=ThemeData(
    primaryColor: primaryColor_light,
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor
    )
  );
}
