import 'package:flutter/material.dart';
import 'package:islami_two/hadeth/hadeth_tab.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routName = 'Hadeth_Details';

  @override
  Widget build(BuildContext context) {
    Hadeth args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('asseta/images/default_bg.png'))),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Islami'),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      args.title,
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Container(
                        padding: EdgeInsets.all(18),
                        child: Text(
                          args.content,
                          style: TextStyle(fontSize: 18),
                          textDirection: TextDirection.rtl,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
