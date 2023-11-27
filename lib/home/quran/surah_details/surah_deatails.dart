import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/quran/surah_details/verse-content.dart';
import 'package:provider/provider.dart';

import '../../../provider/settings_provider.dart';
import '../../../ui/theme/theme.dart';

class SurahDetails extends StatefulWidget {
  static const String routName = "surah_details";

  @override
  State<SurahDetails> createState() => _SurahDetailsState();
}

class _SurahDetailsState extends State<SurahDetails> {
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvidr>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SurahDetailsArgs;
    if (chapterContent.isEmpty) {
      readFile(args.index);
    }
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage( provider.changeBackgroundImage()),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.title),
          ),
          body: Column(
            children: [
              Expanded(
                child: Card(
                  margin: EdgeInsets.only(left: 6,right: 6,top: 76,bottom: 12),

                  elevation: 24,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: chapterContent.isEmpty
                      ? Center(child: CircularProgressIndicator())
                      : ListView.separated(
                          itemBuilder: (buildContext, position) {
                            return VerseContent(chapterContent[position]);
                          },
                      separatorBuilder:(buildContext, index){
                         return Container(
                         width: double.infinity,
                           height: 1,
                           color:Theme.of(context).primaryColor,
                           margin: EdgeInsets.symmetric(horizontal: 64,vertical: 12),
                         ) ;
                      },
                          itemCount: chapterContent.length),
                ),
              ),
            ],
          ),
        ));
  }

  void readFile(int chapterIndex) async {
    String text =
        await rootBundle.loadString("assets/files/${chapterIndex}.txt");
    chapterContent = text.split("\n");
    setState(() {});
  }
}

class SurahDetailsArgs {
  String title;
  int index;

  SurahDetailsArgs(this.title, this.index);
}
