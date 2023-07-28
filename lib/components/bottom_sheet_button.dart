import 'package:flutter/material.dart';

class BottomSheetButton extends StatelessWidget {
  const BottomSheetButton({
    super.key,
    required this.interpretation,
  });

  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
        onPressed: () {
          showModalBottomSheet(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              )),
              backgroundColor: Theme.of(context).colorScheme.primary,
              context: context,
              builder: (BuildContext context) {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Container(
                              height: 5,
                              width: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.10,
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Normal Weight 18.5 - 24.9',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Underweight 17.0 - 18.4',
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Severely Underweight 16.0 - 16.9',
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Very Severely Underweight < 15.9',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Overweight 25.0 - 29.99',
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Obese Class I 30.0 - 34.9',
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Obese Class II 35.0 - 39.9',
                            ),
                            const BottomSheetDetails(
                              textDetail: 'Obese Class III > 40',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              });
        },
        child: const Text(
          'Details',
        ));
  }
}

class BottomSheetDetails extends StatelessWidget {
  final String textDetail;
  const BottomSheetDetails({
    super.key,
    required this.textDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textDetail,
      textAlign: TextAlign.center,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
