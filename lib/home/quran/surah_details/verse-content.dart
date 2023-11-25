import 'package:flutter/material.dart';

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
