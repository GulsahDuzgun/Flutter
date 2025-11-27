import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  Widget outputScreen = QuizStartScreen();

  void switchScreen() {
    outputScreen = QuestionsScreen();
  }

  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 35, 15, 90),
                Color.fromARGB(255, 5, 18, 41),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: outputScreen,
        ),
      ),
    ),
  );
}
