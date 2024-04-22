import 'package:flutter/material.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getSelectedItems('English'),
          SizedBox(
            height: 18,
          ),
          getUnSelectedItems('Arabic')
        ],
      ),
    );
  }

  Widget getSelectedItems(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Color(0XFFB7935F)),
        ),
        Spacer(),
        Icon(
          Icons.check,
          color: Color(0XFFB7935F),
          size: 28,
        )
      ],
    );
  }

  Widget getUnSelectedItems(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 24, fontWeight: FontWeight.bold, color: Color(0XFFB7935F)),
    );
  }
}
