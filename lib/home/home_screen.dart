import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/hadeth/hadeth_tab.dart';
import 'package:islami/home/quran/quran_tab.dart';
import 'package:islami/home/radio/radio_tab.dart';
import 'package:islami/home/tasbeh/tasbeh_tab.dart';
import 'package:islami/ui/theme/theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              Themes.themeMode == ThemeMode.light
                  ? "assets/images/main_bg.png": "assets/images/main_dark_bg.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Islami"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTabIndex,
          onTap: (index) {
            setState(() {
              selectedTabIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              label: "Quran",
              icon: ImageIcon(AssetImage("assets/images/quran.png")),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              label: "Hadeth",
              icon: ImageIcon(AssetImage("assets/images/myhadeth.png")),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              label: "Sebha",
              icon: ImageIcon(AssetImage("assets/images/sebha.png")),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme
                  .of(context)
                  .primaryColor,
              label: "radio",
              icon: ImageIcon(AssetImage("assets/images/radio.png")),
            ),
          ],
        ),
        body: tabs[selectedTabIndex],
      ),
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    TasbehTab(),
    RadioTab(),
  ];

}
