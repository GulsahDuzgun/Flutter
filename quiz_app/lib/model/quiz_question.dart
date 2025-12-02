import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class QuizQuestion {
  final String questionText;
  final List<String> answers;

  const QuizQuestion(this.questionText, this.answers);

  List<String> getSuffledAnswerList() {
    List<String> copyList = List.of(answers);
    copyList.shuffle();
    return copyList;
  }

  List<String> get suffledAnswerList {
    List<String> copy2 = List.of(answers);
    copy2.shuffle();
    return copy2;
  }
}
