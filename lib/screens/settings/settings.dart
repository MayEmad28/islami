import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/provider/app_provider.dart';
import 'package:islami/screens/settings/bottomSheetWidget.dart';
import 'package:islami/screens/settings/themeBottomSheetWidget.dart';
import 'package:provider/provider.dart';
class settings extends StatefulWidget {
  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<app_provider>(context);
    return InkWell(
      onTap: (){
        ShowLangBottomSheet();
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(AppLocalizations.of(context)!.language,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: my_theme.primaryColor_light
                  ),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(provider.appLanguage=='en'?
                          AppLocalizations.of(context)!.english
                          :
                    AppLocalizations.of(context)!.arabic,

                      style:Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                      ),
                      Icon(Icons.arrow_drop_down,size: 30,)
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              ShowThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(AppLocalizations.of(context)!.theme,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: my_theme.primaryColor_light
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(provider.isDark()?
                        AppLocalizations.of(context)!.dark
                            :
                        AppLocalizations.of(context)!.light,

                          style:Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.arrow_drop_down,size: 30,)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  void ShowLangBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context)=>bottomSheetWidget(),
    );
  }
  void ShowThemeBottomSheet() {
    showModalBottomSheet(context: context,
        builder: (context)=>themeBottomSheetWidget()
    );
  }
}

