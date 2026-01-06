import 'package:flutter/material.dart';
import 'package:islami/home/hadeth/hadeth_details_screen.dart';
import 'package:islami/home/home_screen.dart';
import 'package:islami/home/my_theme_data.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/l10n/app_localizations.dart';





void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => HomeScreen(),
    '/sura_details': (context) => SuraDetailsScreen(),
    '/hadeth_details': (context) => HadethDetailsScreen(),
    
  },
      
      debugShowCheckedModeBanner: false,

      theme: MyThemeData.lightMode,

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale("en"),





    );
  }
}