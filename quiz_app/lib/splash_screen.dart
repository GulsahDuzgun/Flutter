import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  var outputScreen = "start-screen";
  List<String> selectedAnswer = [];

  void saveAnswer(String answer) {
    selectedAnswer.add(answer);

    if (selectedAnswer.length == questions.length) {
      setState(() {
        outputScreen = "result-screen";
      });
    }
  }

  void handleSwitchScreenFunc() {
    setState(() {
      outputScreen = "questions-screen";
    });
  }

  void handleReset() {
    setState(() {
      outputScreen = "start-screen";
      selectedAnswer = [];
    });
  }

  @override
  Widget build(context) {
    Widget outputScreenWidget = QuizStartScreen(handleSwitchScreenFunc);

    if (outputScreen == "questions-screen") {
      outputScreenWidget = QuestionsScreen(onSelectAnswer: saveAnswer);
    }

    if (outputScreen == "result-screen") {
      outputScreenWidget = ResultScreen(
        chosenAnswerList: selectedAnswer,
        onReset: handleReset,
      );
    }
    return outputScreenWidget;
  }
}
