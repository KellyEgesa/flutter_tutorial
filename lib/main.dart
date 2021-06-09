import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favourite color?",
        "answers": ["Black", "Red", "Green", "White"],
      },
      {
        "questionText": "What's your favourite animal?",
        "answers": ["Dog", "Cat", "Tortoise", "Snake"]
      },
      {
        "questionText": "What's your favourite team?",
        "answers": ["Arsenal", "Liverpool", "Chelsea", "Leicester"]
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(children: [
        Question(
          questions[_questionIndex]['questionText'],
        ),
        Answer(
          _answerQuestion,
          1,
        ),
        Answer(
          _answerQuestion,
          2,
        ),
        Answer(
          _answerQuestion,
          3,
        )
      ]),
    ));
  }
}
