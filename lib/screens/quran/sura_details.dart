import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../provider/app_provider.dart';

class sura_details extends StatefulWidget {
  static const String routeName = 'sura_details';
  @override
  State<sura_details> createState() => _sura_detailsState();
}

class _sura_detailsState extends State<sura_details> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<app_provider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as suraArgs;
   if(content.isEmpty){
     readFile(args.index);
   }

    return Stack(
      children: [
        provider.isDark()?
        Image.asset('assets/images/dark_bg.png',width: double.infinity,height: double.infinity,fit:BoxFit.fill ,)
            :
        Image.asset('assets/images/default_bg.png',width: double.infinity,height: double.infinity,fit:BoxFit.fill ,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title, // Display the sura name in the AppBar title
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body:content.isEmpty ?
              Center(child: CircularProgressIndicator(
                  color: provider.isDark()? my_theme.yellowColor : my_theme.primaryColor_light
              ))
          :
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.10,
              horizontal: MediaQuery.of(context).size.height * 0.04,
            ),
            decoration: BoxDecoration(
            color: provider.isDark()? my_theme.primaryColor_dark: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text('${args.name}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: provider.isDark()? my_theme.yellowColor : my_theme.blackColor
                  ),),
                Divider(
                  height: 1,
                  thickness: 1,
                    color: provider.isDark()? my_theme.yellowColor : my_theme.primaryColor_light
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: content.length,
                    itemBuilder: (context, index) {
                      return Text(
                        '${content[index]} ${{index+1}}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18.0, color: provider.isDark()? my_theme.yellowColor : my_theme.blackColor),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void readFile(int index) async {
    String fileContent =
    await rootBundle.loadString('assets/asset/${index + 1}.txt');
    fileContent=fileContent.trim();
     List <String> lines = fileContent.split('\n');
    content = lines;

   setState(() {
   });
  }
}
class suraArgs{
  String name;
  int index;
  suraArgs({required this.name,required this.index});
}

