import 'package:flutter/material.dart';
import 'components/centered_placeholder.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  final String title;

  MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(title))),
        //body: CenteredPlaceholder(padding: 50));
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            picRow(),
            Text('George Vuxton'),
            Text('Baller Extraordinaire'),
            Text('Phone NUMBER HERE'),
            linkedInEmailRow()
          ]),
        ));
  }

  Widget picRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(child: Placeholder(), width: 70, height: 70))
    ]);
  }

  Widget linkedInEmailRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.all(5),
        child: Text('LinkedIn Profile'),
      ),
      Padding(
        padding: EdgeInsets.all(5),
        child: Text('email'),
      )
    ]);
  }
}
