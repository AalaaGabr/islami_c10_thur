import 'package:flutter/material.dart';
import 'package:islami_two/hadeth/hadeth_details_screen.dart';
import 'package:islami_two/home_screen.dart';
import 'package:islami_two/screen/sura_details_screen.dart';
import 'package:islami_two/splash_screen.dart';
import 'package:islami_two/styls/my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
      routes: {
        HadethDetailsScreen.routName: (context) => HadethDetailsScreen(),
        SuraDetailsScreen.routeNAme: (context) => SuraDetailsScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SplashScreen.routName: (context) => SplashScreen(),
      },
      initialRoute: SplashScreen.routName,
      debugShowCheckedModeBanner: false,
    );
  }
}
