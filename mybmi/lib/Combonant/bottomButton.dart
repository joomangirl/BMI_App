import 'package:flutter/material.dart';

import '../constans.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onpress;

  const BottomButton({this.text, this.onpress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        child: Center(
          child: Text(
            '$text',
            style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 35.0,
                fontWeight: FontWeight.w700),
          ),
        ),
        color: KBottomcontanircolor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: KBottombar,
      ),
    );
  }
}
