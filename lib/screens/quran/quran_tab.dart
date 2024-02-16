import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/my_theme.dart';
import 'package:islami/screens/quran/sura_name.dart';

class quran_tab extends StatelessWidget {
  List suraNames=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"
  ];
  static const String routeName='quran';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/qur2an_screen_logo.png')),
        Divider(
          thickness: 3,
          color: my_theme.primaryColor_light,
        ),
        Text('Sura Name',style: Theme.of(context).textTheme.titleMedium,),
        Divider(
          thickness: 3,
          color: my_theme.primaryColor_light,
        ),
        Expanded(
          child: ListView.separated(itemBuilder:(context,index){
            return sura_name(name: suraNames[index],index: index,);
          },
              itemCount: suraNames.length, separatorBuilder: (BuildContext context, int index) {
            return Divider(
              thickness: 3,
              color: my_theme.primaryColor_light,
            );
            },
          ),
        )
      ],
    );
  }

}
