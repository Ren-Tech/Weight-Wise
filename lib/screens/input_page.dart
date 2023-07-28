import 'package:bmi_calculator/calculator_brain.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/card_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/rounded_icon_button.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:bmi_calculator/screens/result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:numberpicker/numberpicker.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

Gender? selectedGender;
double height = 120.0;
int weight = 60;
int age = 21;
int selectedAge = 21;

bool isIcon = false;
IconData _lightThemeIcon = Icons.wb_sunny;
IconData _darkThemeIcon = Icons.nightlight;

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              weight = 60;
              age = 21;
              height = 120;
            });
          },
          icon: const Icon(
            Icons.refresh,
          ),
        ),
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: ReusableCard(
                                  color: selectedGender == Gender.male
                                      ? kMaleActiveCardColor
                                      : Theme.of(context).colorScheme.secondary,
                                  cardChild: CardContent(
                                    icon: FontAwesomeIcons.mars,
                                    cardTitle: 'MALE',
                                    iconColor: selectedGender == Gender.male
                                        ? kActiveIconColor
                                        : kInactiveIconColor,
                                  ),
                                  onUserTap: () {
                                    setState(() {
                                      selectedGender = Gender.male;
                                    });
                                  }),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: ReusableCard(
                                  color: selectedGender == Gender.female
                                      ? kFemaleActiveCardColor
                                      : Theme.of(context).colorScheme.secondary,
                                  cardChild: CardContent(
                                    icon: FontAwesomeIcons.venus,
                                    cardTitle: 'FEMALE',
                                    iconColor: selectedGender == Gender.female
                                        ? kActiveIconColor
                                        : kInactiveIconColor,
                                  ),
                                  onUserTap: () {
                                    setState(() {
                                      selectedGender = Gender.female;
                                    });
                                  }),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ReusableCard(
                              color: Theme.of(context).colorScheme.primary,
                              cardChild: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'WEIGHT',
                                    style: kSize25Weigth500,
                                  ),
                                  NumberPicker(
                                      axis: Axis.horizontal,
                                      minValue: 1,
                                      maxValue: 200,
                                      itemWidth: 50,
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white54),
                                      selectedTextStyle: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      value: weight,
                                      onChanged: (value) {
                                        setState(() {
                                          weight = value;
                                        });
                                      }),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundedIconButton(
                                        icon: FontAwesomeIcons.minus,
                                        onUserPressed: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      RoundedIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        onUserPressed: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              onUserTap: () {}),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Expanded(
                          child: ReusableCard(
                              color: Theme.of(context).colorScheme.primary,
                              cardChild: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    'AGE',
                                    style: kSize25Weigth500,
                                  ),
                                  NumberPicker(
                                      axis: Axis.horizontal,
                                      minValue: 1,
                                      maxValue: 99,
                                      itemWidth: 50,
                                      textStyle: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white54),
                                      selectedTextStyle: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      value: age,
                                      onChanged: (value) {
                                        setState(() {
                                          age = value;
                                        });
                                      }),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      RoundedIconButton(
                                        icon: FontAwesomeIcons.minus,
                                        onUserPressed: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      RoundedIconButton(
                                        icon: FontAwesomeIcons.plus,
                                        onUserPressed: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              onUserTap: () {}),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: ReusableCard(
                        color: Theme.of(context).colorScheme.primary,
                        cardChild: Column(
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 20, right: 20),
                              child: Text(
                                'HEIGHT',
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(176, 255, 255, 255)),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: SfSlider.vertical(
                                    inactiveColor: Colors.black12,
                                    activeColor: Colors.white,
                                    min: 20,
                                    max: 300.0,
                                    interval: 20,
                                    value: height,
                                    showTicks: true,
                                    showLabels: true,
                                    enableTooltip: true,
                                    thumbIcon: const Icon(
                                      FontAwesomeIcons.arrowsUpDown,
                                      size: 11,
                                      color: Color(0xFF252243),
                                    ),
                                    minorTicksPerInterval: 2,
                                    onChanged: (dynamic newValue) {
                                      setState(() {
                                        height = newValue;
                                      });
                                    }),
                              ),
                            )
                          ],
                        ),
                        onUserTap: () {}),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            BottomButton(
              onUserpRessed: () {
                CalculatorBrain calculation =
                    CalculatorBrain(height: height, weight: weight);
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                bmiResult: calculation.calculateUserBMI(),
                                resultText: calculation.getResult(),
                                interpretation: calculation.getInterpretation(),
                              )));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
