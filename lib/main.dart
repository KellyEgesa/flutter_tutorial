import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  var _questionIndex = 0;

  final _questions = [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Black", "score": 10},
        {"text": "Red", "score": 7},
        {"text": "Green", "score": 5},
        {"text": "White", "score": 3}
      ],
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 10},
        {"text": "Cat", "score": 7},
        {"text": "Tortoise", "score": 5},
        {"text": "Snake", "score": 3}
      ]
    },
    {
      "questionText": "What's your favourite team?",
      "answers": [
        {"text": "Arsenal", "score": 10},
        {"text": "Liverpool", "score": 7},
        {"text": "Chelsea", "score": 5},
        {"text": "Leicester", "score": 3}
      ]
    }
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questions, _questionIndex)
            : Result(_totalScore),
      ),
    );
  }
}
//always prioritise smaller widgets
//will break this down
