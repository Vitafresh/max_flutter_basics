import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Question({super.key});
  final String _questionText;
  Question(this._questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      width: double.infinity,
      child: Text(
        _questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
