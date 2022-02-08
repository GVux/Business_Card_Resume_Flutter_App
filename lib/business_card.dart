import 'package:flutter/material.dart';
import 'components/centered_placeholder.dart';

class MainScreen extends StatelessWidget {
  final String title;

  MainScreen({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text(title))),
        //body: CenteredPlaceholder(padding: 50));
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [placeholderRow(), placeholderRow()]));
  }

  Widget paddedPlaceholder() {
    return Padding(
        padding: EdgeInsets.all(20),
        child: SizedBox(child: Placeholder(), width: 100, height: 100));
  }

  Widget placeholderRow() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [paddedPlaceholder(), paddedPlaceholder()]);
  }
}
