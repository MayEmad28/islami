import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/home.dart';
import 'package:islami/screens/quran/sura_details.dart';
import 'package:islami/screens/splash_screen/splash.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:my_theme.light_theme,
      debugShowCheckedModeBanner: false,
      initialRoute: splash.routeName,
      routes: {
        home.routeName : (context)=>home(),
        splash.routeName:(context)=>splash(),
       sura_details.routeName:(context)=>sura_details(),

      },
    );
  }
}
