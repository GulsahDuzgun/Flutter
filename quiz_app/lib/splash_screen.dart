import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  var outputScreen = "start-screen";
  final List<String> selectedAnswer = [];

  void saveAnswer(String answer) {
    selectedAnswer.add(answer);
  }

  void handleSwitchScreenFunc() {
    setState(() {
      outputScreen = "questions-screen";
    });
  }

  @override
  Widget build(context) {
    Widget outputScreenWidget = QuizStartScreen(handleSwitchScreenFunc);

    if (outputScreen == "questions-screen") {
      outputScreenWidget = QuestionsScreen(onSelectAnswer: saveAnswer);
    }
    return outputScreenWidget;
  }
}
