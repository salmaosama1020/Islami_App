import 'package:flutter/material.dart';
import 'package:islami_project/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {},
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
