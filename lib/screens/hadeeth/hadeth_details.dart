import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/my_theme.dart';
import 'hadeeth_tab.dart';

class hadeth_details extends StatefulWidget {
  static const String routeName = 'hadeth_details';
  @override
  State<hadeth_details> createState() => _hadeth_detailsState();
}

class _hadeth_detailsState extends State<hadeth_details> {

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute
        .of(context)
        ?.settings
        .arguments as Hadeth_data;


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
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge,
            ),
          ),
          body: Container(
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(
              vertical: MediaQuery
                  .of(context)
                  .size
                  .width * 0.10,
              horizontal: MediaQuery
                  .of(context)
                  .size
                  .height * 0.04,
            ),
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, .8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Text(args.title,
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge,),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: my_theme.primaryColor_light,
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.04,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: args.content.length,
                    itemBuilder: (context, index) {
                      return Text(args.content[index],
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 18.0),
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
}
