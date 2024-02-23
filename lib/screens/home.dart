import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeeth/hadeeth_tab.dart';
import 'package:islami/screens/quran/quran_tab.dart';
import 'package:islami/screens/radio/radio_tab.dart';
import 'package:islami/screens/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class home extends StatefulWidget {
  static const String routeName='home';

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    var x=AppLocalizations.of(context);
    print(x);
    return Stack(
      children: [
        Image.asset('assets/images/default_bg.png',width: double.infinity,height: double.infinity,fit:BoxFit.fill ,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Islami'
              ,
              style:Theme.of(context).textTheme.titleLarge ,
            ),
          ),
          bottomNavigationBar:Theme(
            data: Theme.of(context).copyWith(
    canvasColor: my_theme.primaryColor_light
    ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex=index;
                setState(() {

                });
              },
              //backgroundColor: Theme.of(context).primaryColor,
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label:' AppLocalizations.of(context)!.quran',
                ),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                    label: 'AppLocalizations.of(context)!.hadeth',
                ),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                    label: 'AppLocalizations.of(context)!.sebha',
                ),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/icon_radio.png')),
                    label: 'AppLocalizations.of(context)!.radio',
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs=[
    quran_tab(),
    hadeeth_tab(),
    sebha_tab(),
    radio_tab(),
  ];
}
