import 'package:bmi_calculator/components/bottom_sheet_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/user_detail_indicator.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;
  const ResultPage(
      {super.key,
      required this.bmiResult,
      required this.resultText,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('BMI Results'),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    UserDetailIndicator(
                      title: 'WEIGHT',
                      value: '${weight.toString()}kg',
                    ),
                    UserDetailIndicator(
                        title: 'HEIGHT',
                        value: '${height.toStringAsFixed(0)}cm'),
                    UserDetailIndicator(
                      title: 'AGE',
                      value: age.toString(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ReusableCard(
                  color: Theme.of(context).colorScheme.primary,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          bmiResult.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          resultText.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          interpretation.toUpperCase(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                      BottomSheetButton(interpretation: interpretation)
                    ],
                  ),
                  onUserTap: () {}),
            ),
          ),
        ],
      ),
    );
  }
}
