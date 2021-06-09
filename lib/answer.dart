import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;

  Answer(this.selectHandler, this.answer);

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
          answer,
        ),
      ),
    );
  }
}
