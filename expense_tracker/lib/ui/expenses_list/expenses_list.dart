import 'package:expense_tracker/domain/models/expense.dart';
import 'package:expense_tracker/ui/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenseList,
  });

  final List<Expense> expenseList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (ctx, index) => ExpenseItem(expense: expenseList[index]),
      ),
    );
  }
}
