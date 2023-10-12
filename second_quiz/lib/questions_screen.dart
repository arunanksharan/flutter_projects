import 'package:flutter/material.dart';
import 'package:second_quiz/answer_button.dart';
import 'package:second_quiz/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);
  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            currentQuestion.text,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 80),
          ...currentQuestion.answers.map((answer) {
            return AnswerButton(
              onTap: () {},
              answerText: answer,
            );
          }),
        ],
      ),
    );
  }
}
