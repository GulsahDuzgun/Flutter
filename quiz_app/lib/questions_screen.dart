import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/custom_answer_btn.dart';

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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question", style: TextStyle(color: Colors.white)),
          const SizedBox(height: 30),
          CustomAnswerBtn(btnText: "Answer 1", onTap: () {}),
          CustomAnswerBtn(btnText: "Answer 1", onTap: () {}),
          CustomAnswerBtn(btnText: "Answer 1", onTap: () {}),
          CustomAnswerBtn(btnText: "Answer 1", onTap: () {}),
        ],
      ),
    );
  }
}
