import 'package:flutter/material.dart';

class mytheme{
  static Color primarycolor = Color(0xffB7935F);

  static Color blackcolor = Color(0xff242424);

  static Color whitecolor = Color(0xffffffff);

  static ThemeData lightmode = ThemeData(
    primaryColor:primarycolor,
    //canvasColor: primarycolor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: blackcolor
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      //backgroundColor: primarycolor,
      selectedItemColor: blackcolor,
      unselectedItemColor: whitecolor,


    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)
      , titleMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w400
    ),
        titleSmall: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold
        )
    )
  );
}