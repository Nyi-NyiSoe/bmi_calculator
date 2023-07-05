import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
class ResultPage extends StatelessWidget {

  ResultPage({
    required this.bmiResult,
    required this.interpretation,
    required this.resultText
  });

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(15.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kTitleTextStyle,
            ),
          ),
         
        ),
         Expanded(
          flex: 5,
          child: ResuableCard(
            colour: kActiveCardColor, 
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(resultText.toUpperCase(),style: kResultTextStyle,),
                Text(bmiResult,style: kBMITextStyle,),
                Text(interpretation,style: kBodyTextSyyle,textAlign: TextAlign.center,)
                
              ],
              
            )),
          
         ),
         BottomButton(buttonTitle: 'RECALCULATE', onTap: (){
          Navigator.pop(context);
         })
         
      ]),
    );
  }
}
