import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
class IconCard extends StatelessWidget {
  IconCard({required this.txt,required this.iconName});

  final String txt;
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Icon(
       iconName,
        size: 80.0,
      ),
      SizedBox(
        height: 15.0,
      ),
      Text(
        txt,
        style:
            kLabelTextStyle,
      )
    ]);
  }
}
