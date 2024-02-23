import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeeth/hadeth_details.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/quran/sura_details.dart';
import 'package:islami/screens/splash_screen/splash.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale('en'),
      theme:my_theme.light_theme,
      debugShowCheckedModeBanner: false,
      initialRoute: splash.routeName,
      routes: {
        home.routeName : (context)=>home(),
        splash.routeName:(context)=>splash(),
       sura_details.routeName:(context)=>sura_details(),
        hadeth_details.routeName:(context)=>hadeth_details(),

      },
    );
  }
}
