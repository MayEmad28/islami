import 'package:flutter/material.dart';

class my_theme{
  static Color blackColor=Color(0xff242424);
  static Color primaryColor_light=Color(0xffB7935F);
  static Color primaryColor_dark=Color(0xff141A2E);
  static Color yellowColor=Color(0xffFACC1D);


  static ThemeData light_theme=ThemeData(
    primaryColor: primaryColor_light,
    textTheme: TextTheme(
      titleSmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
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

  static ThemeData dark_theme=ThemeData(
    primaryColor: primaryColor_dark,
    textTheme: TextTheme(
      titleSmall: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),
      titleMedium: TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white)
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color:Colors.white,
        )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: yellowColor
    ),

  );
}
