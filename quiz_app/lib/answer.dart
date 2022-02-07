import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(this.selectHandler, this.answerText, {Key? key})
      : super(key: key);

  final VoidCallback selectHandler;
  final String answerText;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
          onPrimary: Colors.white,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
