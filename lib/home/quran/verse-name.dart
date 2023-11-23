import 'package:flutter/material.dart';
import 'package:islami/ui/surah_details/surah_deatails.dart';

class VerseNameWidget extends StatelessWidget {
  String title;
  int index;

  VerseNameWidget(this.title, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SurahDetails.routName,
            arguments: SurahDetailsArgs(title, index));
      },
      child: Container(
        child: Row(
          children: [
            Expanded(
                child: Text(index.toString(),
                    style: TextStyle(fontSize: 24),
                    textAlign: TextAlign.center)),

            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
