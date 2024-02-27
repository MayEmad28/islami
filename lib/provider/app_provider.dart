import 'package:flutter/material.dart';
class app_provider extends  ChangeNotifier{
  String appLanguage='en';
  ThemeMode appTheme=ThemeMode.light;

  void changeLanguage(String newLanguage){
    if(appLanguage==newLanguage){
      return;
    }
      appLanguage=newLanguage;
    notifyListeners();
  }
  void changeTheme(ThemeMode newtheme){
    if(appTheme==newtheme){
      return;
    }
      appTheme=newtheme;
    notifyListeners();
  }
  bool isDark(){
    return appTheme==ThemeMode.dark;
  }

}
