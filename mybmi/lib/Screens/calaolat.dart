import 'package:flutter/material.dart';
import 'package:mybmi/Combonant/bottomButton.dart';
import 'package:mybmi/Combonant/relase_card.dart';
import '../constans.dart';

class Resultpage extends StatelessWidget {
  final String BMIresult;
  final String resulttext;
  final String interpetation;

  const Resultpage({this.BMIresult, this.resulttext, this.interpetation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(15.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Your Resdult',
                    style: KTittletextstyle,
                  ))),
          Expanded(
              flex: 5,
              child: ReuseableCard(
                color: KActivecardcolor,
                cardchild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resulttext.toUpperCase(),
                      style: KResultTextStyle,
                    ),
                    Text(
                      BMIresult,
                      style: KBMITextSyyle,
                    ),
                    Text(
                      interpetation,
                      style: KBodyText,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          BottomButton(
            onpress: () {
              Navigator.pop(context);
            },
            text: 'RE-CALCULATE',
          )
        ],
      ),
    );
  }
}
