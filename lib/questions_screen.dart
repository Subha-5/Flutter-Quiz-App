import 'package:flutter/material.dart';

import 'package:adv_project/answer_button.dart';
import 'package:adv_project/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  final currentQuestion = questions[0];

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          AnswerButton(
            answerText: currentQuestion.options[0],
            onTap: () => {},
          ),
          AnswerButton(
            answerText: currentQuestion.options[1],
            onTap: () => {},
          ),
          AnswerButton(
            answerText: currentQuestion.options[2],
            onTap: () => {},
          ),
          AnswerButton(
            answerText: currentQuestion.options[3],
            onTap: () => {},
          ),
        ],
      ),
    );
  }
}
