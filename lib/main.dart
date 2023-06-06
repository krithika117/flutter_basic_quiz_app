import 'package:flutter/material.dart';
import 'package:new_app/models/questions.dart';
import 'package:new_app/widgets/question_widget.dart';
import 'package:new_app/widgets/answer_widget.dart';
import 'package:new_app/widgets/completion_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Geologica',
      ),
      home: const QuizWidget(),
    );
  }
}

class QuizWidget extends StatefulWidget {
  const QuizWidget({super.key});

  @override
  _QuizWidgetState createState() => _QuizWidgetState();
}

class _QuizWidgetState extends State<QuizWidget> {
  var currentQuestionIndex = 0;
  var score = 0;

  void answerQuestion(int answerIndex) {
    setState(() {
      if (currentQuestionIndex < questions.length) {
        if (answerIndex ==
            questions[currentQuestionIndex]['answerIndex'] as int) {
          score++;
        }
        currentQuestionIndex++;
      }
    });
  }

  Widget buildQuizScreen() {
    List<String> options = List<String>.from(
        questions[currentQuestionIndex]['options'] as List<dynamic>);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        QuestionWidget(
          questionText: questions[currentQuestionIndex]['question'] as String,
        ),
        ...options.map(
          (option) => AnswerWidget(
            answerText: option,
            answerQuestion: answerQuestion,
            answerIndex: options.indexOf(option),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Presidio App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: currentQuestionIndex < questions.length
            ? buildQuizScreen()
            : CompletionScreen(score: score),
      ),
    );
  }
}
