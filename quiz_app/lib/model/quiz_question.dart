import 'package:flutter/material.dart';

class QuizQuestion {
  final String questionText;
  final List<String> answers;

  const QuizQuestion(this.questionText, this.answers);

  List<String> getSuffledAnswerList() {
    List<String> copyList = List.of(answers);
    copyList.shuffle();
    return copyList;
  }
}
