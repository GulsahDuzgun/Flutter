import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  var title = "";

  void _saveTitle(String enteredText) {
    title = enteredText;
  }

  @override
  Widget build(ctx) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(label: Text("Title")),
            onChanged: _saveTitle,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(title);
                },
                child: Text("click"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
