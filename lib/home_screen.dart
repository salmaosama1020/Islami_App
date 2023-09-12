import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'homeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
      Image.asset('assets/images/background.png', width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,)
    ],);
  }
}
