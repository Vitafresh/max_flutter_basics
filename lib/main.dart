import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';
import 'question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    // throw UnimplementedError();
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    // print('Question answered!');
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
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
            Text(questions.elementAt(_questionIndex)),
            LegacyRaisedButton(
              onPressed: _answerQuestion,
              child: Question('Answer 1'),
            ),
            LegacyRaisedButton(
              onPressed: () => print('Question 2 answered!'),
              child: Question('Answer 2'),
            ),
            LegacyRaisedButton(
              onPressed: () {
                print('Question 3 answered!');
              },
              child: Question('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
