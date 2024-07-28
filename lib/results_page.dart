import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({
    required this.bmi,
    required this.result,
    required this.feedBack,
    super.key,
  });
  final String bmi;
  final String result;
  final String feedBack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              "Your Result",
              style: kNumberStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              containerColor: const Color.fromARGB(103, 141, 142, 152),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    result,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w800,
                        color: Colors.green),
                  ),
                  Text(
                    bmi,
                    style: kNumberStyle,
                  ),
                  Text(
                    feedBack,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              alignment: Alignment.center,
              color: kBottomColor,
              margin: const EdgeInsets.only(top: 10),
              height: kBottomContainerHeight,
              // width: double.infinity,
              child: const Text(
                "RE-CALCULATE",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
          )
        ],
      ),
    );
  }
}
