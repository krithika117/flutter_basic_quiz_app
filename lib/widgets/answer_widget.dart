import 'package:flutter/material.dart';

class AnswerWidget extends StatelessWidget {
  final String answerText;
  final void Function(int) answerQuestion;
  final int answerIndex;

  const AnswerWidget(
      {required this.answerText,
      required this.answerQuestion,
      required this.answerIndex,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: ElevatedButton(
        onPressed: () => answerQuestion(answerIndex),
        child: Text(answerText),
      ),
    );
  }
}
