import 'package:flutter/material.dart';
import 'package:islami/screens/hadeeth/hadeth_details.dart';
import 'hadeeth_tab.dart';
class hadeth_name extends StatelessWidget {
  Hadeth_data hadeth;
  hadeth_name({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, hadeth_details.routeName,
          arguments: Hadeth_data(title: hadeth.title, content: hadeth.content)
        );
      },
        child: Text(hadeth.title,
          style:Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        )
    );
  }
}

