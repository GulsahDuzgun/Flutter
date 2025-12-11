import 'package:flutter/material.dart';
import 'package:expense_tracker/model/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expenseItem, {super.key});

  final Expense expenseItem;

  @override
  Widget build(cntx) {
    return Card(
      child: Column(
        children: [
          Row(children: [Text(expenseItem.title)]),
          const SizedBox(height: 4),
          Row(
            children: [
              Text('\$ ${expenseItem.amount.toStringAsFixed(2)}'),
              const Spacer(),
              Row(
                children: [
                  Icon(categoryIcons[expenseItem.category]),
                  const SizedBox(width: 8),
                  Text(expenseItem.formattedDate),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
