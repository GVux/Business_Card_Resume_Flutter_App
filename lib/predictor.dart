import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project3/styles.dart';
import '../models/eightball.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final eightBall = EightBall();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${eightBall.currentGuess}', style: Styles.largeText),
        Padding(
          padding: EdgeInsets.all(20),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  eightBall.selectedOption();
                });
              },
              child: Text('Press Here')),
        ),
      ],
    );
  }
}
