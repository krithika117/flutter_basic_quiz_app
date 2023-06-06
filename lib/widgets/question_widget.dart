import 'package:flutter/material.dart';

class QuestionWidget extends StatelessWidget {
  QuestionWidget({super.key, required this.questionText});

  final String questionText;

  @override
  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
