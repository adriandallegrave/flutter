import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void answerQuestion() {
    if (kDebugMode) {
      print('Answer chosen!');
    }
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
    ];
    questions.add('What\'s your favorite animarl?');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: Column(
          children: [
            const Text('The question!'),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              child: const Text('Answer 2'),
              onPressed: () {
                if (kDebugMode) {
                  print('Answer 2 chosen');
                }
              },
            ),
            ElevatedButton(
              child: const Text('Answer 3'),
              onPressed: () {
                if (kDebugMode) {
                  print('Answer 3 chosen');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
