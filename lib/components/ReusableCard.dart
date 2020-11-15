import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusedCard extends StatelessWidget {
  final Color colour;
  final Widget childCard;
  final Function onPress;

  ReusedCard({@required this.colour, this.childCard,this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: childCard,
        padding: EdgeInsets.fromLTRB(5.0, 0.0, 5.0, 0.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}