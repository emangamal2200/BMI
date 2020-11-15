import 'package:flutter/material.dart';
import '../Constants.dart';
class BottomButton extends StatelessWidget {
  BottomButton({@required this.title,@required this.onTap});
  final String title;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
            child: Text(
              title,
              style: kBottomButtonStyle,
            )),
        margin: EdgeInsets.all(10.0),
        height: kBottomContainerHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}