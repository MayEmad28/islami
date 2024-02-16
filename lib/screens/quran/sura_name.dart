import 'package:flutter/material.dart';
import 'package:islami/screens/quran/sura_details.dart';

class sura_name extends StatelessWidget {
  String name;
  int index;
  sura_name({required this.name,required this.index});

@override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){
          Navigator.pushNamed(context, sura_details.routeName,
              arguments:
            suraArgs(name: name, index: index),
          );
        },
    child: Text(name,
      style:Theme.of(context).textTheme.titleMedium,
      textAlign: TextAlign.center,
    )
    );
  }
}

