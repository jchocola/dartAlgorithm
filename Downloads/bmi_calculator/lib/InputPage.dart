import 'package:bmi_calculator/resultPage.dart';
import 'package:bmi_calculator/weightCard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Icons.dart';
import 'ReusableCard.dart';
import 'constant.dart';
import 'resultPage.dart';
import 'result_map.dart';
class InputPage extends StatefulWidget {
  @override
  _InputPage createState() => _InputPage();
}

class _InputPage extends State<InputPage> {
  Color maleCardColor = kInActiveCardColour;
  Color femaleCardColor = kActiveCardColour;
  gender? currentGender;
  int height = 120;
  int weight = 50;
  int age = 18;

  void updateColor() {
    maleCardColor = (currentGender == gender.male)
        ? kActiveCardColour
        : kInActiveCardColour;
    femaleCardColor = (currentGender == gender.female)
        ? kActiveCardColour
        : kInActiveCardColour;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // 2 higher element
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    myOnPressFunc: () {
                      currentGender = gender.male;
                      setState(() {
                        updateColor();
                      });
                    },
                    colour: maleCardColor,
                    cardChild: SexButton(
                      myicon: FontAwesomeIcons.mars,
                      myString: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    myOnPressFunc: () {
                      currentGender = gender.female;
                      setState(() {
                        updateColor();
                      });
                    },
                    colour: femaleCardColor,
                    cardChild: SexButton(
                      myicon: FontAwesomeIcons.venus,
                      myString: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReUsableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("HEIGHT", style: KLabelStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: KHeightInfoStyle,
                      ),
                      Text(
                        'cm',
                        style: KLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30)),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReUsableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "WEIGHT",
                          style: KLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: KHeightInfoStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            weightAgeIcon(
                                icon: FontAwesomeIcons.minus,
                                myFunc: () {
                                  setState(() {
                                    weight--;
                                  });
                                }),
                            weightAgeIcon(
                              icon: FontAwesomeIcons.plus,
                              myFunc: () {
                                setState(() {
                                  weight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReUsableCard(
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "AGE",
                          style: KLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: KHeightInfoStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            weightAgeIcon(
                                icon: FontAwesomeIcons.minus,
                                myFunc: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            weightAgeIcon(
                              icon: FontAwesomeIcons.plus,
                              myFunc: () {
                                setState(() {
                                  age++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child:ElevatedButton(
                onPressed: (){
                CalculatorBrain calcRes = CalculatorBrain( height, weight, age);
                calcRes.ftCalculateBMI();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResultPage(

                    calcRes.bmi.toString(),
                    calcRes.classification,
                    calcRes.description,
                  )));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: kInActiveCardColour,
                ),
                child: ReUsableCard(
                  colour: Color(0xFFEB1555),
                  cardChild :Text("CALCULATE",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
          ),
        ],
      ),
    );
  }
}

//0xFF1D1E33
