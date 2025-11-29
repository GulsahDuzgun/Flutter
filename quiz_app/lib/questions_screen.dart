import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Question"),
          const SizedBox(height: 30),
          ElevatedButton(onPressed: () {}, child: Text("Option 1")),
          ElevatedButton(onPressed: () {}, child: Text("Option 1")),
          ElevatedButton(onPressed: () {}, child: Text("Option 1")),
          ElevatedButton(onPressed: () {}, child: Text("Option 1")),
        ],
      ),
    );
  }
}
