import 'package:flutter/material.dart';

class MyThemeData {
  static Color lightPrimaryColor = Color(0XFFB7935F);
  static Color darkPrimaryColor = Color(0XFF141A2E);
  static bool isDarkSelected = true;

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.cyan,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.black,
    ),
    cardColor: Colors.white,
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: Colors.cyan,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
      centerTitle: true,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.yellow,
    ),
    cardColor: Colors.white,
  );
}
