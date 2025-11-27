import 'package:flutter/material.dart';

class QuizStartScreen extends StatefulWidget {
  QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() {
    return _QuizStartScreen();
  }
}

class _QuizStartScreen extends State<QuizStartScreen> {
  void onPressed() {
    setState(() {
      print("clicked");
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: 0.5,
          //   child: Image.asset(
          //     "assets/images/quiz-logo.png",
          //     width: 300,
          //     color: Colors.amber,
          //   ),
          // ),
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(120, 255, 255, 255),
          ),
          SizedBox(height: 24),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              iconSize: 18,
            ),
            icon: Icon(Icons.arrow_right_alt),
            label: Text("Start Quiz"),
          ),
        ],
      ),
    );
  }
}
