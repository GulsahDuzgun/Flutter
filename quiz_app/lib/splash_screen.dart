import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void onPressed() {
    print("clicked");
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
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
