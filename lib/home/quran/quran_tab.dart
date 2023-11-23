import 'package:flutter/material.dart';
import 'package:islami/home/quran/verse-name.dart';

import '../../ui/surah_details/verse-content.dart';

class QuranTab extends StatelessWidget {
  List<String> names =["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/quran_screen_logo.png", height: 280),
        Container(
          margin: EdgeInsets.only(bottom: 4),
          width: double.infinity, height: 2,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          "Verse Name",
          style: TextStyle(fontSize: 25),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(child:ListView.separated(itemBuilder: (buildContext,position){
           return VerseNameWidget(names[position],position+1);
        }
        ,itemCount: names.length,separatorBuilder: (buildContext,position){
          return Container(
            width: double.infinity,
            height: 1,
            margin: EdgeInsets.symmetric(horizontal: 24),
            color: Theme.of(context).primaryColor,
          );
          },
        )
        )
      ],
    );
  }
}
