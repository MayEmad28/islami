import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';

class bottomSheetWidget extends StatefulWidget {
  @override
  State<bottomSheetWidget> createState() => _bottomSheetWidgetState();
}

class _bottomSheetWidgetState extends State<bottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<app_provider>(context);
    return Container(
      padding: EdgeInsets.all(10),
      color: provider.isDark()? my_theme.primaryColor_dark : Colors.white,
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              provider.changeLanguage('en');
            },
            child: provider.appLanguage=='en'?
                getSelectedItem(AppLocalizations.of(context)!.english)
                :
                getUnselectedItem(AppLocalizations.of(context)!.english)
          ),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                provider.changeLanguage('ar');
              },
              child: provider.appLanguage=='ar'?
              getSelectedItem(AppLocalizations.of(context)!.arabic)
                  :
              getUnselectedItem(AppLocalizations.of(context)!.arabic)
          ),
        ],
      ),
    );
  }

  Widget getSelectedItem(String text){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,
          style:Theme.of(context).textTheme.titleSmall!.copyWith(
            color: my_theme.primaryColor_light,
          ) ,),
        Icon(Icons.check,color: my_theme.primaryColor_light,)
      ],
    );
  }
  Widget getUnselectedItem(String text){
    return Text(text,style: Theme.of(context).textTheme.titleSmall,);

  }
}
