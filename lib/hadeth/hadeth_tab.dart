import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_two/hadeth/hadeth_title_widget.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth = [];

  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) LoadHadethFile();
    return ahadeth.isEmpty
        ? Center(child: CircularProgressIndicator())
        : Container(
            child: Column(
              children: [
                Expanded(
                    flex: 1,
                    child: Image.asset('asseta/images/hadeth_logo.png')),
                Container(
                  padding: EdgeInsets.all(12),
                  margin: EdgeInsets.symmetric(horizontal: 45),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      border: Border.symmetric(
                    horizontal: BorderSide(
                      color: Color(0XFFB7935F),
                      width: 2,
                    ),
                  )),
                  child: Text(
                    'Ahadeth',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: ListView.separated(
                      itemBuilder: (context, index) => HadethTitleWidget(
                            hadeth: ahadeth[index],
                          ),
                      separatorBuilder: (context, index) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 35),
                            color: Theme.of(context).dividerColor,
                            width: double.infinity,
                            height: 2,
                          ),
                      itemCount: ahadeth.length),
                )
              ],
            ),
          );
  }

  void LoadHadethFile() async {
    String fileContent =
        await rootBundle.loadString('asseta/files/ahadeth.txt');
    List<String> allAhadeth = fileContent.split('#');
    for (int i = 0; i < allAhadeth.length; i++) {
      List<String> hadethLines = allAhadeth[i].trim().split('\n');
      String title = hadethLines[0];
      allAhadeth.removeAt(0);
      String hadethContent = allAhadeth.join('\n');
      Hadeth hadeth = Hadeth(title: title, content: hadethContent);
      ahadeth.add(hadeth);
      print(title);
      print(hadethContent);
    }
    setState(() {});
  }
}

class Hadeth {
  String title;
  String content;

  Hadeth({required this.title, required this.content});
}
