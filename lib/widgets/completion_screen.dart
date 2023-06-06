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
        (score < 3) ? 'assets/images/sad.gif' : 'assets/images/done.gif';

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Results',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Image.asset(imagePath, width: 200),
          const SizedBox(height: 8),
          Text(
            'Score: $score',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 8),
          Text(
            message,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
