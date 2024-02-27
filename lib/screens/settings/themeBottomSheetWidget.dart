import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami/my_theme.dart';

class themeBottomSheetWidget extends StatefulWidget {
  @override
  State<themeBottomSheetWidget> createState() => _themeBottomSheetWidgetState();
}

class _themeBottomSheetWidgetState extends State<themeBottomSheetWidget> {
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
              provider.changeTheme(ThemeMode.light);
            },
            child: provider.isDark()?
                getUnselectedItem(AppLocalizations.of(context)!.light)
                :
                getSelectedItem(AppLocalizations.of(context)!.light)
          ),
          SizedBox(height: 15,),
          InkWell(
              onTap: (){
                provider.changeTheme(ThemeMode.dark);
              },
              child: provider.isDark()?
              getSelectedItem(AppLocalizations.of(context)!.dark)
                  :
              getUnselectedItem(AppLocalizations.of(context)!.dark)
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
