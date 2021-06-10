import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestions;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.answerQuestions, this.questions, this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(
        questions[questionIndex]['questionText'],
      ),
      ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
          .map((answer) =>
              Answer(() => answerQuestions(answer["score"]), answer["text"]))
          .toList()
    ]);
  }
}
