import 'package:expense_tracker/domain/models/expense.dart';
import 'package:expense_tracker/ui/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenseList,
    required this.removeExpense,
  });

  final List<Expense> expenseList;

  final void Function(Expense expense) removeExpense;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenseList.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(expenseList[index]),
          background: Container(
            color: Theme.of(context).colorScheme.error.withOpacity(0.25),
            margin: EdgeInsets.symmetric(
              horizontal: Theme.of(context).cardTheme.margin!.horizontal,
            ),
          ),
          onDismissed: (direction) => removeExpense(expenseList[index]),
          child: ExpenseItem(expense: expenseList[index]),
        ),
      ),
    );
  }
}
