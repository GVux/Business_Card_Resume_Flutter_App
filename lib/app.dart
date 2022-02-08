import 'package:flutter/material.dart';
import 'business_card.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.title}) : super(key: key);

  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: MainScreen(title: title),
    );
  }
}
