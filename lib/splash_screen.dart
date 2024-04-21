import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_two/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routName = 'splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'asseta/light mode/splash@3x.png',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.fill,
    );
  }

  void initState() {
    setState(() {});
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }
}
// @override
//   Widget build(BuildContext context) {
//     return Image.asset('asseta/light mode/splash@3x.png',
//     width: double.infinity, height: double.infinity,fit:BoxFit.fill,);
//   }
