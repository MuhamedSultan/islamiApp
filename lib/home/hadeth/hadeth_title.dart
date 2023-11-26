import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_deatails.dart';

import 'hadeth.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget(this.hadeth);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,
            HadethDetails.routName,
            arguments: hadeth
        );
      },
      child: Container(
        child: Row(
          children: [
            Expanded(
              child: Text(
                hadeth.title,
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
