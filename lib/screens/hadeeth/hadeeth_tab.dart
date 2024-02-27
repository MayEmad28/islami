import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/hadeeth/hadeth_name.dart';
import 'package:provider/provider.dart';
import '../../provider/app_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class hadeeth_tab extends StatefulWidget {
  @override
  State<hadeeth_tab> createState() => _hadeeth_tabState();
}

class _hadeeth_tabState extends State<hadeeth_tab> {
  List <Hadeth_data> hadeth_list=[];
  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<app_provider>(context);
   if (hadeth_list.isEmpty){
     loadFile();
   }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Divider(
          thickness: 3,
            color: provider.isDark()? my_theme.yellowColor : my_theme.primaryColor_light
        ),
        Text(AppLocalizations.of(context)!.hadeth,style: Theme.of(context).textTheme.titleMedium,),
        Divider(
          thickness: 3,
            color: provider.isDark()? my_theme.yellowColor : my_theme.primaryColor_light
        ),
        hadeth_list.isEmpty?
            CircularProgressIndicator(
                color: provider.isDark()? my_theme.yellowColor : my_theme.primaryColor_light
            )
            :
        Expanded(
          child: ListView.builder(itemBuilder:(context,index){
            return hadeth_name(hadeth: hadeth_list[index],);

          },
            itemCount: hadeth_list.length,
          ),
        )
      ],
    );
  }
  void loadFile() async{
    String fileContent= await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List <String> ahadeth=fileContent.split('#\r\n');
    for(int i=0;i<ahadeth.length;i++)
    {
      List<String> hadeth=ahadeth[i].split('\n');
      String title=hadeth[0];
      hadeth.removeAt(0);
      Hadeth_data Hadeth=Hadeth_data(title: title, content: hadeth);
      hadeth_list.add(Hadeth);
      setState(() {

      });
    }
  }
}

class Hadeth_data{
  String title;
  List<String> content;
  Hadeth_data({required this.title,required this.content});
}