import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // implement createState
    // throw UnimplementedError();
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerQuestion() {
    // print('Question answered!');
    setState(() {
      questionIndex++;
    });

    print(questionIndex);
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
            Text(questions.elementAt(questionIndex)),
            LegacyRaisedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            LegacyRaisedButton(
              onPressed: () => print('Question 2 answered!'),
              child: const Text('Answer 2'),
            ),
            LegacyRaisedButton(
              onPressed: () {
                print('Question 3 answered!');
              },
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
