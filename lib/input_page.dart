import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'results_page.dart';
import 'package:bmi_calculator/Calculator brain.dart';
enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;
  // Color maleCardColour = inactiveCardColour;
  // Color femaleCardColour = inactiveCardColour;

  // 1 = male 2 = female
  // void updateColor(Gender selectedGender){
  //   if (selectedGender == Gender.male){
  //     if (maleCardColour == inactiveCardColour){
  //       maleCardColour = activeCardColour;
  //       femaleCardColour = inactiveCardColour;
  //     }
  //     else {
  //       maleCardColour = inactiveCardColour;
  //     }
  //   }
  //   if (selectedGender == Gender.female){
  //     if (femaleCardColour == inactiveCardColour){
  //       femaleCardColour = activeCardColour;
  //       maleCardColour = inactiveCardColour;
  //     }
  //     else {
  //       femaleCardColour = inactiveCardColour;
  //     }
  //   }
  // }
  int height = 180;
  int weight = 60;
  int age = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReuseCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 70.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'MALE',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReuseCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.male
                      ? kActiveCardColour
                      : kInactiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 70.0,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'FEMALE',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumTextStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      inactiveTickMarkColor: Color(0xFF8D8E98),
                      activeTrackColor: Colors.white,
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      overlayColor: Color(0x29EB1555),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 0 - 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActiveCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'WEIGHT',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight = weight-1;
                                });
                              },
                              backgroundColor: Color(0xFF4c4f5E),
                              child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  weight = weight+1;
                                });
                              },
                              backgroundColor: Color(0xFF4c4f5E),
                              child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: kActiveCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'AGE',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age = age-1;
                                });
                              },
                              backgroundColor: Color(0xFF4c4f5E),
                              child: Icon(FontAwesomeIcons.minus,color: Colors.white,),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              onPressed: (){
                                setState(() {
                                  age = age+1;
                                });
                              },
                              backgroundColor: Color(0xFF4c4f5E),
                              child: Icon(FontAwesomeIcons.plus,color: Colors.white,),
                            ),
                          ],
                        )
                      ],
                    ),
                    colour: kActiveCardColour,
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){

              CalculatorBrain calc = CalculatorBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context) => ResultsPage(
                bmiResult: calc.calculateBMI(),
                resultText: calc.getValue(),
                interpetion: calc.getInterpetion(),
              ),),);
            },
            child: Container(
              margin: EdgeInsets.only(top: 15),
              color: kBottomContainerColour,
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  'Calculate ',
                  style: kLargeButtonTextStyle
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}