import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/questions_summary.dart';
import 'data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({
    super.key,
    required this.chosenAnswerList,
    required this.onReset,
  });
  final List<String> chosenAnswerList;
  final List<Map<String, Object>> resultMap = [];
  final void Function() onReset;

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
    final numTotalQuestions = questions.length;
    final resultList = getResults();
    final correctAnswers = resultList
        .where((item) => item["is_correct"] as bool)
        .length;

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "You answered $correctAnswers out of  $numTotalQuestions questions correctly",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          QuestionsSummary(resultList),
          SizedBox(height: 30),
          TextButton.icon(
            onPressed: onReset,
            icon: Icon(Icons.refresh),
            label: Text("Restart Quiz !"),
          ),
        ],
      ),
    );
  }
}
