import 'package:flutter/material.dart';
import 'package:islami/ui/surah_details/surah_deatails.dart';

class VerseContent extends StatelessWidget {
  String congtent;

  VerseContent(this.congtent);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        congtent,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
