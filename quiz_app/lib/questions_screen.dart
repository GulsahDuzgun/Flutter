import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/custom_answer_btn.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    final question1 = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            questions[0].questionText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...question1.answers.map((answer) {
            return CustomAnswerBtn(btnText: answer, onTap: () {});
          }),
        ],
      ),
    );
  }
}
