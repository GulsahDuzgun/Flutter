import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenseList,
    required this.onRemoveExpense,
  });

  final List<Expense> expenseList;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(ctx) {
    return ListView.builder(
      itemCount: expenseList.length,
      itemBuilder: (ctx, index) => Dismissible(
        background: Container(
          color: Theme.of(ctx).colorScheme.error.withOpacity(0.7),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(ctx).cardTheme.margin!.horizontal,
          ),
        ),
        key: ValueKey(expenseList[index]),
        onDismissed: (direction) {
          onRemoveExpense(expenseList[index]);
        },
        child: ExpenseItem(expenseList[index]),
      ),
    );
  }
}
