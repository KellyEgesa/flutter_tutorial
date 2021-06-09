import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final int answerNumber;

  Answer(this.selectHandler, this.answerNumber);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber.shade300),
        ),
        onPressed: selectHandler,
        child: Text(
          "Answer $answerNumber",
        ),
      ),
    );
  }
}
