import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var questions = [
    "Whats your favourite color?",
    "Whats your favourite animal?",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(children: [
        Text("The Question!"),
        RaisedButton(
          child: Text("Answer 1"),
          onPressed: null,
        ),
        RaisedButton(
          child: Text("Answer 2"),
          onPressed: null,
        ),
        RaisedButton(
          child: Text("Answer 3"),
          onPressed: null,
        )
      ]),
    ));
  }
}
