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
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
      
          children: [
            Center(
              child: Text(
                currentQuestion.text,
                style: const TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.getShuffledAnswers().map((option) {
              return AnswerButton(answerText: option, onTap: () {});
            }),
          ],
        ),
      ),
    );
  }
}
