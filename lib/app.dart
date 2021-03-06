// CS 492 Project 3

import 'package:flutter/material.dart';
import 'tabs/business_card.dart';
import 'tabs/resume.dart';
import 'tabs/predictor.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.title}) : super(key: key);

  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData(
            primarySwatch: Colors.indigo, scaffoldBackgroundColor: Colors.grey),
        home: MainTabController());
  }
}

class MainTabController extends StatelessWidget {
  MainTabController({Key? key}) : super(key: key);

  static const tabs = [
    Tab(icon: Icon(Icons.card_travel)),
    Tab(icon: Icon(Icons.notes)),
    Tab(icon: Icon(Icons.quiz_rounded))
  ];

  final screens = [BusinessCardScreen(), Resume(), Predictor()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text('Call Me Maybe')),
                bottom: TabBar(tabs: tabs)),
            body: TabBarView(children: screens)));
  }
}
