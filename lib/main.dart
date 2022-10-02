import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My title'),
        ),
        body: Column(
          children: <Widget>[
            Text('This is a text!'),
            LegacyRaisedButton(
              child: Text('Answer 1'),
              onPressed: null,
            ),
            LegacyRaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
            LegacyRaisedButton(
              child: Text('Answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
