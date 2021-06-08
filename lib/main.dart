import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "Whats your favourite color?",
      "Whats your favourite animal?",
      "Whats your favourite team?",
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(children: [
        Question(
          questions[questionIndex],
        ),
        ElevatedButton(
          child: Text("Answer 1"),
          onPressed: answerQuestion,
        ),
        ElevatedButton(
          child: Text("Answer 2"),
          onPressed: answerQuestion,
        ),
        ElevatedButton(
          child: Text("Answer 3"),
          onPressed: answerQuestion,
        )
      ]),
    ));
  }
}
