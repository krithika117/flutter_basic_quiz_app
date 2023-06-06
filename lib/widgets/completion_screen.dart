import 'package:flutter/material.dart';
import 'package:new_app/main.dart';

class CompletionScreen extends StatelessWidget {
  const CompletionScreen({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    final String message = (score < 2)
        ? 'Better luck next time :('
        : 'Congratulations! You did well!';
    final String imagePath =
        (score < 2) ? 'assets/images/sad.gif' : 'assets/images/done.gif';

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          'Results',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 16),
        Image.asset(imagePath, width: 200),
        const SizedBox(height: 16),
        Text(
          'Score: $score',
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 16),
        Text(
          message,
          style: const TextStyle(fontSize: 18),
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
