import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.resultList, {super.key});
  final List<Map<String, Object>> resultList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: resultList.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: data["is_correct"] as bool
                        ? Color.fromARGB(255, 85, 180, 97)
                        : Color.fromARGB(255, 238, 120, 120),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text(
                      ((data["question_index"] as int) + 1).toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data["question_text"] as String,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 5),
                      Text(
                        data["user_answer"] as String,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 238, 120, 120),
                        ),
                      ),
                      Text(
                        data["correct_answer"] as String,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 85, 180, 97),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
