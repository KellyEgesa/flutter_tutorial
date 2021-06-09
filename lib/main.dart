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

  final questions = [
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
    if (_questionIndex < questions.length) {
      print("We have more questions");
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: _questionIndex < questions.length
          ? Column(children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]["answers"] as List<String>)
                  .map((answer) => Answer(_answerQuestion, answer))
                  .toList()
            ])
          : Center(
              child: Text("No more Questions"),
            ),
    ));
  }
}
