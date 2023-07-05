import 'package:flutter/material.dart';
import 'package:bmi_calculator/screens/input_page.dart';
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData.dark().copyWith(
        appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          backgroundColor: Color(0xFF0A0e21),
        ),
        scaffoldBackgroundColor: Color(0xFF0A0e21)
      ),
      
      home: InputPage(),
      
    );
  }
}

