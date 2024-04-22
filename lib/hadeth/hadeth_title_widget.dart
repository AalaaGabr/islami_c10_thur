import 'package:flutter/material.dart';
import 'package:islami_two/hadeth/hadeth_details_screen.dart';
import 'package:islami_two/hadeth/hadeth_tab.dart';

class HadethTitleWidget extends StatelessWidget {
  Hadeth hadeth;

  HadethTitleWidget({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, HadethDetailsScreen.routName,
            arguments: hadeth);
      },
      child: Container(
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          child: Text(
            hadeth.title,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
    );
  }
}
