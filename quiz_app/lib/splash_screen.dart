import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  Widget? outputScreen;

  // After object has been created then initState method runs before the build method runs
  // When setState is called it triggers to buildMethos so  setState method is not used in initState method

  @override
  void initState() {
    super.initState();
    outputScreen = QuizStartScreen(handleSwitchScreenFunc);
  }

  void handleSwitchScreenFunc() {
    setState(() {
      outputScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(context) {
    return outputScreen ?? const SizedBox.shrink();
  }
}
