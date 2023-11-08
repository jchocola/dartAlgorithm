import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SexButton extends StatelessWidget {
  IconData? myicon;
  String? myString;

  SexButton({@required this.myicon, @required this.myString});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          myicon!,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          myString!,
          style: KLabelStyle,
        ),
      ],
    );
  }
}


class weightAgeIcon extends StatelessWidget
{
  IconData? icon;
  VoidCallback? myFunc;
  weightAgeIcon({this.icon, this.myFunc});

  @override
  Widget build (BuildContext context)
  {
    return ElevatedButton(
      onPressed: myFunc,
      child: Icon(icon, color: Colors.white),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        padding: EdgeInsets.all(20),
        backgroundColor: Color(0xFF4C4F5E), // <-- Button color
      ),
    );
  }
}

void plusOne(int weight)
{
  weight++;
  return;
}