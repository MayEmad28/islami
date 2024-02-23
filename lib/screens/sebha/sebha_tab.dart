import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';

class sebha_tab extends StatefulWidget {
  @override
  State<sebha_tab> createState() => _sebha_tabState();
}

class _sebha_tabState extends State<sebha_tab> {
  int count=0;
  int index=0;
  double angle=0;
  List<String> sebha=[
    'سبحان الله',
    'الحمد الله',
    ' الله اكبر',
    'لا اله الا الله',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *0.075),
                child:Transform.rotate(
                  angle:angle ,
                    child: Image.asset('assets/images/body_sebha_logo.png')) ,
              ),
              Image.asset('assets/images/head_sebha_logo.png')
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.03,),
          Text('عدد التسبيحات',
            style:Theme.of(context).textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600
            )),
          SizedBox(height: MediaQuery.of(context).size.height *0.02,),
          Container(
            child: Text('$count',
              style: TextStyle(fontSize: 25),
            ),
            padding: EdgeInsets.all(22),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: my_theme.primaryColor_light.withOpacity(0.6)
            )
          ),
          SizedBox(height: MediaQuery.of(context).size.height *0.02,),
          InkWell(
            onTap: (){
              tsbaeh();
            },
            child: Container(
              child: Text('${sebha[index]}',
                style: TextStyle(fontSize: 25,color: Colors.white),
              ),
              padding: EdgeInsets.all(12),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: my_theme.primaryColor_light
              )
            ),
          ),
        ],
      ),
    );
  }
  void tsbaeh(){
    count++;
    angle+=0.7;
   if(count%33==0){
     index++;
     count=0;
   }
   if(index >3){
     index=0;
     count=0;
   }
    setState(() {

    });
  }
}
