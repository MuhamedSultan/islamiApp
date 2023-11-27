import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami/home/hadeth/hadeth_deatails.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/provider/settings_provider.dart';
import 'package:islami/ui/splash/splash_screen.dart';
import 'package:islami/ui/theme/theme.dart';
import 'package:provider/provider.dart';
import 'home/quran/surah_details/surah_deatails.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (buildContext)=>SettingsProvidr(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvidr>(context);
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahDetails.routName: (context) => SurahDetails(),
        HadethDetails.routName: (context) => HadethDetails(),
      },
      initialRoute: HomeScreen.routeName,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: provider.themeMode,

        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      supportedLocales:const [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale(provider.languageCode),
    );
  }
}
