import 'package:flutter/material.dart';
import 'business_card.dart';
import 'resume.dart';
import 'predictor.dart';

class App extends StatelessWidget {
  const App({Key? key, required this.title}) : super(key: key);

  final String title;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: title,
        theme: ThemeData(
            primarySwatch:
                Colors.green), //, scaffoldBackgroundColor: Colors.black12),
        //home: BusinessCardScreen(title: title)
        home: MainTabController(title: title));
  }
}

class MainTabController extends StatelessWidget {
  MainTabController({Key? key, required this.title}) : super(key: key);

  final String title;

  static const tabs = [
    Tab(text: 'Business Card'),
    Tab(text: 'Resume'),
    Tab(text: 'Predictor')
  ];

  final screens = [
    BusinessCardScreen(title: "Call Meee Maybe??"),
    Resume(),
    Predictor()
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text('Call Me Maybe')),
                bottom: TabBar(tabs: tabs)),
            body: TabBarView(children: screens)));
  }
}
