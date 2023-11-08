import 'package:flutter/material.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({@required this.colour, this.cardChild , this.myOnPressFunc});
  final Color? colour;
  final Widget? cardChild;
  final VoidCallback? myOnPressFunc;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: myOnPressFunc,
      child: Container(
        alignment: Alignment.center,
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}