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

  void _answerQuestion() {
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
          : Result(),
    ));
  }
}
//always prioritise smaller widgets
//will break this down
