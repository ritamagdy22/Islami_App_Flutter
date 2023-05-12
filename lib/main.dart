

import 'package:eslami/Home/quran/Soura_Details.dart';
import 'package:eslami/Home/Hadith/hadith_details.dart';
import 'package:eslami/provider/app_config_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Home_Screen.dart';
import 'My_Theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';




void main() {
  runApp(ChangeNotifierProvider(
      create : (context)=> AppConfigProvider(),
      child: MyApp()));
}
/*
creat first class
 */
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      routes: {HomeScreen.routeNAme:(context)=> HomeScreen(),
        SouraDetailsScreen.RouteName: (context)=> SouraDetailsScreen(),
        HadithDetailsScreen.RouteName:(context)=>HadithDetailsScreen(),
      },
      initialRoute: HomeScreen.routeNAme,
      theme: MythemeData.LightTheme,
      darkTheme: MythemeData.DarkTheme,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(provider.appLangguage),
      themeMode: ThemeMode.light   );

  }
}

