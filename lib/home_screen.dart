import 'package:flutter/material.dart';
import 'package:islami_two/hadeth/hadeth_tab.dart';
import 'package:islami_two/quran_tab/quran_tab.dart';
import 'package:islami_two/radio/radio_tab.dart';
import 'package:islami_two/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectsdindextab = 0;

  List<Widget> tabs = [
    QuranTab(),
    HadethTab(),
    SebhaTab(),
    RadioTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('islami'),
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectsdindextab,
          onTap: (index) {
            selectsdindextab = index;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                backgroundColor: Color(0XFFB7935F),
                icon: ImageIcon(AssetImage('asseta/images/icon_quran.png')),
                label: "Quran"),
            BottomNavigationBarItem(
                backgroundColor: Color(0XFFB7935F),
                icon: ImageIcon(AssetImage('asseta/images/icon_hadeth.png')),
                label: "Hadeth"),
            BottomNavigationBarItem(
                backgroundColor: Color(0XFFB7935F),
                icon: ImageIcon(AssetImage('asseta/images/icon_sebha.png')),
                label: "Sebha"),
            BottomNavigationBarItem(
                backgroundColor: Color(0XFFB7935F),
                icon: ImageIcon(AssetImage('asseta/images/icon_radio.png')),
                label: "Radio")
          ],
        ),
        body: tabs[selectsdindextab],
      ),
    );
  }
}
