import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth.dart';
import 'package:islami/home/quran/surah_details/verse-content.dart';
import 'package:islami/ui/theme/theme.dart';
import 'package:provider/provider.dart';

import '../../provider/settings_provider.dart';

class HadethDetails extends StatelessWidget {
  static const String routName = "hadeth_details";
  List<String> chapterContent = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<SettingsProvidr>(context);
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(provider.changeBackgroundImage()),
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
                    margin:
                        EdgeInsets.only(left: 6, right: 6, top: 76, bottom: 12),
                    elevation: 24,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: SingleChildScrollView(
                        child: Text(
                      args.content,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.center,
                    ))),
              ),
            ],
          ),
        ));
  }
}
