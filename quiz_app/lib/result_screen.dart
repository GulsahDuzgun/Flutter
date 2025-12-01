import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(ctx) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Results"),
          SizedBox(height: 30),
          Text("Results"),
          SizedBox(height: 30),
          TextButton(onPressed: () {}, child: Text("Restart Quiz !")),
        ],
      ),
    );
  }
}
