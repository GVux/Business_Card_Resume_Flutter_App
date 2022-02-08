import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;

  MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(title))),
        body: Center(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Placeholder(),
        )));
  }
}
