import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    if (kDebugMode) {
      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(children: [
          Text(
            questions[_questionIndex],
          ),
          ElevatedButton(
            onPressed: _answerQuestion,
            child: const Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {
              if (kDebugMode) {
                print('Answer 2 chosen!');
              }
            },
            child: const Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              if (kDebugMode) {
                print('Answer 3 chosen');
              }
            },
            child: const Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
