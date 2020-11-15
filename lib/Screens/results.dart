import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/components/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottombotton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiRes, @required this.bmiState, @required this.bmiInterpretation });
  final String bmiRes;
  final String bmiState;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontFamily: 'Modak',
                fontSize: 28.0,
                color: Color(0xFFef233c),
              ),
            )),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(padding: EdgeInsets.all(15.0),alignment:Alignment.bottomLeft,child: Text('Your Result', style: kResultTitleStyle,),),),
          Expanded(
            flex:5,
            child: ReusedCard(
            colour: kReusableCardColour,
            childCard: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(bmiState.toUpperCase(), style: kResultTextStyle,),
                Text(bmiRes,style: kResultOutStyle,),
                Text(bmiInterpretation,style: kBodyTextStyle,textAlign: TextAlign.center,)
              ],
            ) ,
          ),),
          BottomButton(title: 'RE-CALCULATE',onTap: (){
            Navigator.pop(context);
          },),
        ],
      )
    );
  }
}
