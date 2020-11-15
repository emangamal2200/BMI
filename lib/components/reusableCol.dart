import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constants.dart';


class ReusableCol extends StatelessWidget {
  final IconData ico;
  final String tex;
  ReusableCol({@required this.ico, this.tex});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ico,
          size: 50.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          tex,
          style: kLblTextStyle,
          ),
      ],
    );
  }
}