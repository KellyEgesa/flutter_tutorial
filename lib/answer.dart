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
        style: ElevatedButton.styleFrom(
          primary: Colors.deepOrange,
          onPrimary: Colors.black,
        ),
        onPressed: selectHandler,
        child: Text(
          "Answer $answerNumber",
        ),
      ),
    );
  }
}
