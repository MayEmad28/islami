import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:my_theme.light_theme,
      debugShowCheckedModeBanner: false,
      initialRoute: home.routeName,
      routes: {
        home.routeName : (context)=>home(),
      },
    );
  }
}
