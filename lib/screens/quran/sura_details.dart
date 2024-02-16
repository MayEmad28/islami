import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/quran/sura_content.dart';

class sura_details extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<sura_details> createState() => _sura_detailsState();
}

class _sura_detailsState extends State<sura_details> {
  List<String> content = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as suraArgs;
   if(content.isEmpty){
     readFile(args.index);
   }

    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              'Islami', // Display the sura name in the AppBar title
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body:content.isEmpty ?
              Center(child: CircularProgressIndicator(
                color: my_theme.primaryColor_light,
              ))
          :
          Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.width * 0.10,
              horizontal: MediaQuery.of(context).size.height * 0.04,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, .8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text(' سوره ${args.name}',
                  style: Theme.of(context).textTheme.titleLarge,),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: my_theme.primaryColor_light,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: content.length,
                    itemBuilder: (context, index) {
                      return Text(
                        '${content[index]}',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 16.0),
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
     String lines = fileContent.split('\n').join('{ }');
    content = [lines];
   setState(() {
   });
  }
}
class suraArgs{
  String name;
  int index;
  suraArgs({required this.name,required this.index});
}

