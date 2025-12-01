import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/custom_answer_btn.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currentIndex = 0;

  void goNextQuestion() {
    setState(() {
      currentIndex += 1;
    });
  }

  @override
  Widget build(context) {
    var question = questions[currentIndex];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            question.questionText,
            textAlign: TextAlign.center,
            style: GoogleFonts.lato(fontSize: 24, color: Colors.white),
          ),
          const SizedBox(height: 30),
          ...question.getSuffledAnswerList().map((answer) {
            return CustomAnswerBtn(btnText: answer, onTap: goNextQuestion);
          }),
        ],
      ),
    );
  }
}
