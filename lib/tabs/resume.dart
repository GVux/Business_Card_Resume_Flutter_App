import 'package:flutter/material.dart';
import '../styles.dart';

class Resume extends StatelessWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Text(
            'George Vuxton',
            style: TextStyle(
                fontFamily: 'Michroma', fontSize: 20, color: Colors.indigo),
          ),
        ),
        Text('george.vuxton@gmail.com', style: Styles.smallText),
        Text('linkedin.com/in/georgevuxton', style: Styles.smallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Program Financial Analyst',
              style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('L3Harris', '2018 - Present', 'Los Angeles, CA'),
        Text(
            'Performed adequately at an okay job from 2018 to the present. Hopefully I won\'t stay in it forever but you never know, you know?',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Teller III', style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('SunTrust', '2016 - 2018', 'Tallahassee, FL'),
        Text(
            'I was pretty good at this one. I caught fake checks at least once a week. I also sung Bill Withers (Lovely Day for those wondering) loudly when customers weren\'t around, to the chagrin of my coworkers.',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Fish and Wildlife Law Enforcement Officer',
              style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('Florida FWC', '2016 - 2016', 'Crystal River, FL'),
        Text(
            '\"Hey George, you don\'t seem like the type to be measuring antlers and catching poachers.\" Yeah, I wish someone would have told me that before I had to get pepper sprayed. I did learn to operate a boat which was cool.',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Seafood Clerk', style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('Publix', '2015 - 2016', 'Pensacola, FL'),
        Text(
            'How many more of these do we have to go? Ugh now we\'re getting into the menial jobs. Not that there\'s anything wrong with selling fish. But to say I made as much as a janitor is an insult to janitors.',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Cashier', style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('Publix', '2014 - 2015', 'Tampa, FL'),
        Text(
            '\"Wait, how long was he at Publix? And cashier to seafood clerk seems incredibly lateral, he must have really been starting to hate people. That or he just has a thing for fish. Judging by his next career choice I\'m inclined to think it\'s the latter."',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Bagger', style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('Publix', '2011 - 2014', 'Tallahassee, FL'),
        Text(
            'That\'s right, still Publix. I technically worked at it off and on throughout college but I\'m not looking up the actual dates for this assignment. I think I\'m almost done, just gotta crank out some more text.',
            style: Styles.verySmallText),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text('Dishwasher', style: Styles.verySmallBoldText),
        ),
        corpDatesLocationRow('Sonny\'s', '2006 - 2006', 'Tallahassee, FL'),
        Text(
            'I don\'t even put this one on resumes. You guys are lucky to see this one. I lasted I think 2 weeks? I was actually fired for working too slowly but I came home every night smelling like coleslaw so I didn\'t care.',
            style: Styles.verySmallText),
      ],
    )));
  }

  Widget corpDatesLocationRow(String corp, String dates, String location) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Expanded(child: Text(corp, style: Styles.verySmallText)),
      Expanded(child: Text(dates, style: Styles.verySmallText)),
      Expanded(child: Text(location, style: Styles.verySmallText))
    ]);
  }
}
