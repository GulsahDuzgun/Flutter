import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amaountController = TextEditingController();

  @override
  dispose() {
    _titleController.dispose();
    _amaountController.dispose();
    super.dispose();
  }

  @override
  Widget build(ctx) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Title")),
            controller: _titleController,
          ),
          TextField(
            decoration: const InputDecoration(
              label: Text("Amount"),
              prefixText: "\$ ",
            ),
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            controller: _amaountController,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                  print(_amaountController.text);
                },
                child: Text("click"),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
