import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({ this.color, this.cardchild, this.onpress});
  final Color color;
  final Widget cardchild;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        margin: EdgeInsets.all(15),
        child: cardchild,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
