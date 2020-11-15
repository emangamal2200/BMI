import 'package:flutter/material.dart';
import 'package:bmi_calculator/Screens/InputPage.dart';
import 'package:bmi_calculator/Screens/results.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF011627),
        scaffoldBackgroundColor: Color(0xFF011627),
      ),
      initialRoute: '/first' ,
      routes: {
        '/first': (context) =>(InputPage()),
        '/second': (context) =>(ResultsPage())
      },
    );
  }
}


