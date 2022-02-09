import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'styles.dart';

class BusinessCardScreen extends StatelessWidget {
  //final String title;

  BusinessCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FractionallySizedBox(
      widthFactor: 0.9,
      heightFactor: 0.9,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          picRow(),
          Text(
            'George Vuxton',
            style: TextStyle(
                fontFamily: 'Michroma', fontSize: 30, color: Colors.indigo),
          ),
          Text('Software Extraordinaire', style: Styles.smallText),
          GestureDetector(
              onTap: () => launch('sms:8502747841'),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('850-274-7841', style: Styles.smallText),
              )),
          linkedInEmailRow()
        ]),
      ),
    ));
  }

  Widget picRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
              child: Image.asset('assets/images/avataravatar.jpg'),
              width: 70,
              height: 70))
    ]);
  }

  Widget linkedInEmailRow() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: EdgeInsets.all(7),
        child: GestureDetector(
            onTap: () => launch('https://linkedin.com/in/georgevuxton'),
            child: Text('LinkedIn', style: Styles.smallText)),
      ),
      Padding(
        padding: EdgeInsets.all(7),
        child: GestureDetector(
            onTap: () => launch('mailto:george.vuxton@gmail.com'),
            child: Text('email', style: Styles.smallText)),
      )
    ]);
  }
}
