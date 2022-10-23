import 'package:flutter/material.dart';
import 'package:legacy_buttons/LegacyRaisedButton.dart';

class Answer extends StatelessWidget {
  //const Answer({super.key});

  final VoidCallback selectHandler;
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: LegacyRaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
