import 'package:flutter/material.dart';

class TasbehTab extends StatefulWidget {
  @override
  State<TasbehTab> createState() => _TasbehTabState();
}

class _TasbehTabState extends State<TasbehTab> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.only(top: 16),
                child: Image.asset(
              "assets/images/sebha_header.png",
              width: double.infinity,
            ))),
        Expanded(
            child: Text(
          "عدد التسبيحات",
          style: TextStyle(fontSize: 32),
        )),
        Container(
          margin: EdgeInsets.only(bottom: 32),
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24)),
            color: Color(0x80F0BA61),
            child: Container(
                padding: EdgeInsets.all(24),
                child: Text(
                  count.toString(),
                  style: TextStyle(fontSize: 24),
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 32),

          child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
              child: ElevatedButton(
                onPressed: () {
                  count++;
                  setState(() {});
                },style:  ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                )
              ),
                child: Text(
                  "سبحان الله",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              ),
        )
      ],
    );
  }
}
