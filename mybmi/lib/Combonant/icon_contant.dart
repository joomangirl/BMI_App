import 'package:flutter/material.dart';
import '../constans.dart';




// ignore: camel_case_types
class IconContant extends StatelessWidget {
  final IconData myico;
  final String mytxt;
  IconContant({this.myico, this.mytxt});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myico,
          size: 80.0,
        ),
        SizedBox(
          height: 18.0,
        ),
        Text(
          '$mytxt',
          style:KMytextstyle,
        )
      ],
    );
  }
}
