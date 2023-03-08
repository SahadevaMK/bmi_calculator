import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
class ResultsPage extends StatelessWidget {
   const ResultsPage({Key? key, required this.bmiResult, required this.resultText, required this.interpetion}) : super(key: key);
  final String bmiResult;
  final String resultText;
  final String interpetion;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Your Result',
              style: kLargeButtonTextStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReuseCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBmiTextStyle,
                  ),
                  Text(
                   interpetion,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 15),
                      color: kBottomContainerColour,
                      width: double.infinity,
                      height: kBottomContainerHeight,
                      child: Center(
                        child: Text(
                            'ReCalculate ',
                            style: kLargeButtonTextStyle
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
