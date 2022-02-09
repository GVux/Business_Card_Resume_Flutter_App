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
          Text('Phone # HERE', style: Styles.smallText),
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
