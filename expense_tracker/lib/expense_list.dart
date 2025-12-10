import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({super.key, required this.expenseList});

  final List<Expense> expenseList;

  @override
  Widget build(ctx) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => Text(expenseList[index].title),
    );
  }
}
