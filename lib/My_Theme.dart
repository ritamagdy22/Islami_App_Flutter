import 'package:flutter/material.dart';

class MythemeData{
  static Color LightPrimary= Color(0xFFB7935F);
  static Color colorwhite= Colors.white;
  static Color colorblack= Colors.black45;

  static ThemeData LightTheme= ThemeData(

    primaryColor: LightPrimary,
    scaffoldBackgroundColor: Colors.transparent,
    canvasColor: LightPrimary,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: colorwhite,
        )
    ),

    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      selectedItemColor: colorblack,
      unselectedItemColor: colorwhite,
      showSelectedLabels: true,
    ),
    textTheme: TextTheme(
      headline2: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),
      subtitle1: TextStyle(
          color: colorblack,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),

      subtitle2:TextStyle(
          color:  colorblack,
          fontSize: 30,
          fontWeight: FontWeight.bold


      ),



    ),
  );
  static ThemeData DarkTheme = ThemeData();
}