import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:expense_tracker/model/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.onAddExpense});

  final void Function(Expense expense) onAddExpense;

  @override
  State<NewExpense> createState() {
    return _NewExpense();
  }
}

class _NewExpense extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amaountController = TextEditingController();
  DateTime? _dateOfExpense;
  Category _selectedCategory = Category.food;

  @override
  dispose() {
    _titleController.dispose();
    _amaountController.dispose();
    super.dispose();
  }

  void _presentDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    final dateTemp = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: firstDate,
      lastDate: now,
    );

    setState(() {
      _dateOfExpense = dateTemp;
    });
  }

  void _submitExpense() {
    final enteredAmount = double.tryParse(_amaountController.text);
    final isAmountValid = enteredAmount != null && enteredAmount > 0;
    if (_titleController.text.trim().isEmpty ||
        !isAmountValid ||
        _dateOfExpense == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Invalid input"),
          content: const Text(
            "Please make sure a valid title, amount, date and category was entered",
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Okey"),
            ),
          ],
        ),
      );
      return;
    }

    final newCreatedExpense = Expense(
      title: _titleController.text,
      amount: enteredAmount,
      date: _dateOfExpense!,
      category: _selectedCategory,
    );

    widget.onAddExpense(newCreatedExpense);
    Navigator.pop(context);
  }

  @override
  Widget build(ctx) {
    final keyboardSpace = MediaQuery.of(context).viewInsets.bottom;

    return LayoutBuilder(
      builder: (ctx, constraints) {
        final availableWidth = constraints.maxWidth;

        return SizedBox(
          height: double.infinity,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(16, 48, 16, 16 + keyboardSpace),
              child: Column(
                children: [
                  if (availableWidth > 600)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextField(
                            maxLength: 50,
                            decoration: const InputDecoration(
                              label: Text("Title"),
                            ),
                            controller: _titleController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              label: Text("Amount"),
                              prefixText: "\$ ",
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            controller: _amaountController,
                          ),
                        ),
                      ],
                    )
                  else
                    TextField(
                      maxLength: 50,
                      decoration: const InputDecoration(label: Text("Title")),
                      controller: _titleController,
                    ),
                  if (availableWidth > 600)
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _dateOfExpense == null
                                    ? "Select Date"
                                    : dateFomatter.format(_dateOfExpense!),
                              ),
                              IconButton(
                                onPressed: _presentDatePicker,
                                icon: const Icon(Icons.calendar_month),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        DropdownButton(
                          value: _selectedCategory,
                          items: Category.values
                              .map(
                                (item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item.name.toUpperCase()),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              if (value == null) {
                                return;
                              }
                              _selectedCategory = value;
                            });
                          },
                        ),
                      ],
                    )
                  else
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              label: Text("Amount"),
                              prefixText: "\$ ",
                            ),
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                            controller: _amaountController,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _dateOfExpense == null
                                    ? "Select Date"
                                    : dateFomatter.format(_dateOfExpense!),
                              ),
                              IconButton(
                                onPressed: _presentDatePicker,
                                icon: const Icon(Icons.calendar_month),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  const SizedBox(height: 16),
                  if (availableWidth > 600)
                    Row(
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: _submitExpense,
                          child: Text("Save"),
                        ),
                      ],
                    )
                  else
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DropdownButton(
                          value: _selectedCategory,
                          items: Category.values
                              .map(
                                (item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item.name.toUpperCase()),
                                ),
                              )
                              .toList(),
                          onChanged: (value) {
                            setState(() {
                              if (value == null) {
                                return;
                              }
                              _selectedCategory = value;
                            });
                          },
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("Cancel"),
                        ),
                        ElevatedButton(
                          onPressed: _submitExpense,
                          child: Text("Save"),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
