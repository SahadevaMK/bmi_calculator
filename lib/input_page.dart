import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextStyle = TextStyle(
  fontSize: 20,
  color: Color(0xFF8D8E98),
);
const bottomContainerHeight = 80.0;
const bottomContainerColour = Color(0xFFEB1555);
const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111350);

enum Gender{
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                  child: ReuseCard(
                    colour: selectedGender == Gender.female ? activeCardColour:inactiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.mars,
                          size: 70.0,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'MALE',
                          style: labelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  child: ReuseCard(
                    colour: selectedGender == Gender.male?activeCardColour:inactiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.venus,
                          size: 70.0,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'FEMALE',
                          style:labelTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
          Expanded(
            child: ReuseCard(
              colour: activeCardColour,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColour,
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColour,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            color: bottomContainerColour,
            width: double.infinity,
            height: bottomContainerHeight,
            child: Center(
              child: Text(
                'BMI Calculator',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
