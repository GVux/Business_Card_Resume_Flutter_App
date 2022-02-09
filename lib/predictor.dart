import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project3/styles.dart';
import '../models/eightball.dart';
import 'styles.dart';

class Predictor extends StatefulWidget {
  const Predictor({Key? key}) : super(key: key);

  @override
  State<Predictor> createState() => _PredictorState();
}

class _PredictorState extends State<Predictor> {
  final eightBall = EightBall();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Center(child: Text(title))),
        //body: CenteredPlaceholder(padding: 50));
        body: FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.9,
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('Call Me... Maybe?', style: Styles.largeText),
          GestureDetector(
              onTap: () {
                setState(() {
                  eightBall.selectedOption();
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Ask a question... tap for the answer.',
                    style: Styles.smallText),
              )),
          Text(
            '${eightBall.currentGuess}',
            style: TextStyle(
                fontFamily: 'Michroma', fontSize: 30, color: Colors.indigo),
          )
        ]),
      ),
    ));
  }
}
