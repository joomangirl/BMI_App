import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:mybmi/Combonant/icon_contant.dart';
import 'package:mybmi/Combonant/relase_card.dart';
import '../Combonant/bottomButton.dart';
import '../constans.dart';
import '../Combonant/roundIconButton.dart';
import 'calaolat.dart';
import 'package:mybmi/functioncalc.dart';

enum gander { male, female }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  gander selectDgander;
  int _height = 176;
  int _weight = 60;
  int age = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI App'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      onpress: () {
                        setState(() {
                          selectDgander = gander.male;
                        });
                      },
                      color: selectDgander == gander.male
                          ? KActivecardcolor
                          : KInactivecardcolor,
                      cardchild: IconContant(
                          myico: FontAwesomeIcons.mars, mytxt: 'MALE'),
                    ),
                  ),
                  Expanded(
                      child: ReuseableCard(
                    onpress: () {
                      setState(() {
                        selectDgander = gander.female;
                      });
                    },
                    color: selectDgander == gander.female
                        ? KActivecardcolor
                        : KInactivecardcolor,
                    cardchild: IconContant(
                        myico: FontAwesomeIcons.venus, mytxt: 'FEMALE'),
                  )),
                ],
              ),
            ),
            Expanded(
                child: ReuseableCard(
              color: KInactivecardcolor,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: KMytextstyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(_height.toString(), style: KNumberstyle),
                      SizedBox(
                        width: 5,
                      ),
                      Text('cm', style: KMytextstyle),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555)),
                    child: Slider(
                      value: _height.toDouble(),
                      min: 100,
                      max: 220,
                      onChanged: (double myvalue) {
                        setState(() {
                          _height = myvalue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReuseableCard(
                    color: KInactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: KMytextstyle,
                        ),
                        Text(
                          _weight.toString(),
                          style: KNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  _weight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  _weight--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                  Expanded(
                      child: ReuseableCard(
                    color: KInactivecardcolor,
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Age',
                          style: KMytextstyle,
                        ),
                        Text(
                          age.toString(),
                          style: KNumberstyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: () {
                                setState(() {
                                  age--;
                                });
                              },
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            BottomButton(
              text: 'Calculat',
              onpress: () {
                CalculatorBrain calc = CalculatorBrain(_height, _weight);

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Resultpage(
                              BMIresult: calc.CalculatBMI(),
                              interpetation: calc.getInterbretation(),
                              resulttext: calc.getResult(),
                            )));
              },
            )
          ],
        ));
  }
}
