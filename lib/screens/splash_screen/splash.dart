import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/home.dart';

class splash extends StatefulWidget {
  static const String routeName='splash';
  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  void initState(){
    super.initState();
    Timer(Duration(seconds: 2),(){
      Navigator.pushReplacementNamed(context, home.routeName);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/images/splash.png',width: double.infinity,
        height: double.infinity,fit: BoxFit.fill,
      ),
    );
  }
}
