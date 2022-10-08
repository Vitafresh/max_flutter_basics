import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({super.key});
  final String _questionText;
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Text(_questionText);
  }
}
