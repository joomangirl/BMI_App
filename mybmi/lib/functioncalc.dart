import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  final int hieght;
  final int weight;
  double _BMI;
  CalculatorBrain( this.hieght, this.weight);

  String CalculatBMI() {
    _BMI = weight / pow(hieght / 100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult() {
    if (_BMI >= 25) {
      return 'Overweight';
    } else if (_BMI >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterbretation() {
    if (_BMI >= 25) {
      return 'You have a higher than normal body weight, Try to exercises mor';
    } else if (_BMI >= 18.5) {
      return 'You have a normal body weight, Good Job!';
    } else {
      'You have a lower than normal body weight, you cat eat a bit more.';
    }
  }
}
