import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islami/screens/home.dart';
import 'package:provider/provider.dart';

import '../../provider/app_provider.dart';

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
    var provider=Provider.of<app_provider>(context);
    return Container(
      child: provider.isDark()?
      Image.asset('assets/images/splash – 1.png',width: double.infinity,
        height: double.infinity,fit: BoxFit.fill)
        :
        Image.asset('assets/images/splash.png',width: double.infinity,
        height: double.infinity,fit: BoxFit.fill),
    );
  }
}
