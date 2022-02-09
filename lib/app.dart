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
