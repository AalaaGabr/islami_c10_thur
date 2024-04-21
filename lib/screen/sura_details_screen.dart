import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_two/quran_tab/sura_name.dart';
import 'package:islami_two/screen/quran_details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeNAme = " Sura_Details";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraArgs;
    if (verses.isEmpty) ReadQuranFile(args.index);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "asseta/images/default_bg.png",
        ),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          margin: EdgeInsets.all(26),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          child: ListView.separated(
            separatorBuilder: (context, index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 32),
              width: double.infinity,
              height: 2,
              color: Color(0XFFB7935F),
            ),
            itemBuilder: (context, index) =>
                QuranDetails(quranText: verses[index]),
            itemCount: verses.length,
          ),
        ),
      ),
    );
  }

  void ReadQuranFile(int index) async {
    String fileContent =
        await rootBundle.loadString('asseta/files/${index + 1}.txt');
    List<String> suraLines = fileContent.split('\n');
    verses = suraLines;

    for (int i = 0; i < suraLines.length; i++) {
      print(verses[i]);
    }
    setState(() {});
  }
}
