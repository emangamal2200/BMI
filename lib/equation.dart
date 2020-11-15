import 'package:flutter/material.dart';
import 'dart:math';

class BMICalculatorBrain{
  BMICalculatorBrain({this.weight,this.height});

  final int weight;
  final int height;

  double _bmi;
  String calculateBmi(){
     _bmi = weight/pow((height/100), 2);
    return _bmi.toStringAsFixed(1);
  }
  String getMyState(){
    if(_bmi >=25) {
        return 'Overweight';
    } else if(_bmi > 18.5){
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi >=25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if(_bmi > 18.5){
      return 'You have a normal body weight. Good job! ';
    } else {
      return 'You have a lower than normal body weight. You cen eat a bit more.';
    }

  }

}