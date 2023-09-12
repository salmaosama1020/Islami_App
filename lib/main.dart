import 'package:flutter/material.dart';
import 'package:islami_project/home/home_screen.dart';
import 'package:islami_project/home/quran/sura_details_screen.dart';
import 'package:islami_project/mytheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName : (context) => HomeScreen(),
        SuraDetails.routeName : (context) => SuraDetails()
      },
      debugShowCheckedModeBanner: false,
       home: HomeScreen(),
      theme: mytheme.lightmode,
      );

  }
}
