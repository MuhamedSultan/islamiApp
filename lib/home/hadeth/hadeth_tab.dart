import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/home/hadeth/hadeth_title.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'hadeth.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> allHadethList = [];

  @override
  Widget build(BuildContext context) {
    if (allHadethList.isEmpty) {
      readHadethFile();
    }
    return Column(
      children: [
        Expanded(flex: 1, child: Image.asset("assets/images/hadeth_header.png")),
        Container(
          margin: EdgeInsets.only(bottom: 4),
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_number,
          style: TextStyle(fontSize: 25),
        ),
        Container(
          width: double.infinity,
          height: 2,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
          flex: 3,
          child: Container(
              child: allHadethList.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.separated(
                      itemBuilder: (buildcontext, position) {
                        return HadethTitleWidget(allHadethList[position]);
                      },
                      itemCount: allHadethList.length,
                      separatorBuilder: (buildContext, position) {
                        return Container(
                          width: double.infinity,
                          height: 1,
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          color: Theme.of(context).primaryColor,
                        );
                      },
                    )),
        )
      ],
    );
  }

  void readHadethFile() async {
    List<Hadeth> hadethList = [];
    String fileContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> splitedContent = fileContent.split("#");
    for (int i = 0; i < splitedContent.length; i++) {
      String singleHadethContent = splitedContent[i];
      List<String> lines = singleHadethContent.trim().split("\n");
      String title = lines[0];
      lines.removeAt(0);
      String content = lines.join("\n");
      Hadeth hadeth = Hadeth(title, content);
      hadethList.add(hadeth);
    }
    allHadethList = hadethList;
    setState(() {});
  }
}
