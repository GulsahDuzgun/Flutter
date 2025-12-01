import 'package:flutter/material.dart';
import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.chosenAnswerList});
  final List<String> chosenAnswerList;
  final List<Map<String, Object>> resultMap = [];

  List<Map<String, Object>> getResults() {
    for (var i = 0; i < questions.length; i++) {
      resultMap.add({
        "question_index": i,
        "question_text": questions[i].questionText,
        "user_answer": chosenAnswerList[i],
        "correct_answer": questions[i].answers[0],
        "is_correct": chosenAnswerList[i] == questions[i].answers[0],
      });
    }
    return resultMap;
  }

  @override
  Widget build(ctx) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Results"),
          SizedBox(height: 30),
          Text("Results"),
          SizedBox(height: 30),
          TextButton(onPressed: () {}, child: Text("Restart Quiz !")),
        ],
      ),
    );
  }
}
