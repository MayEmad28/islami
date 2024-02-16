import 'package:flutter/material.dart';

class my_theme{
  static Color blackColor=Color(0xff242424);
  static Color primaryColor_light=Color(0xffB7935F);
  static ThemeData light_theme=ThemeData(
    primaryColor: primaryColor_light,
    textTheme: TextTheme(
      titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
        iconTheme: IconThemeData(
          color:blackColor,
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor
    ),

  );
}
