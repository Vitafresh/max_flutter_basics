import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Question answered!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What???',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My title'),
        ),
        body: Column(
          children: <Widget>[
            const Text('This is a text!'),
            LegacyRaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            LegacyRaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 2'),
            ),
            LegacyRaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
