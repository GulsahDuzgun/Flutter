import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenseList});

  final List<Expense> expenseList;

  @override
  Widget build(ctx) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => ExpenseItem(expenseList[index]),
    );
  }
}
