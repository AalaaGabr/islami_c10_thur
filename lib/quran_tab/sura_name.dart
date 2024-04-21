import 'package:flutter/material.dart';
import 'package:islami_two/screen/sura_details_screen.dart';

class SuraName extends StatelessWidget {
  // SuraArgs suraArgs;
  // SuraName({required this.suraArgs});
  String suraName;
  int index;

  SuraName({
    required this.suraName,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, SuraDetailsScreen.routeNAme,
            arguments: SuraArgs(title: suraName, index: index));
      },
      child: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                suraName,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          )),
    );
  }
}

class SuraArgs {
  String title;
  int index;

  SuraArgs({required this.title, required this.index});
}
