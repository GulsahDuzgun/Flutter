import 'package:flutter/material.dart';
import 'package:quiz_app/splash_screen.dart';

void main() {
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
          child: SplashScreen(),
        ),
      ),
    ),
  );
}
