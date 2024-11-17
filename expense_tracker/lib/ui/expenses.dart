import 'package:expense_tracker/data/dummy_expenese.dart';
import 'package:expense_tracker/domain/models/expense.dart';
import 'package:expense_tracker/ui/app_background.dart';
import 'package:expense_tracker/ui/expenses_list/expenses_list.dart';
import 'package:expense_tracker/ui/new_expense/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  var activeScreen = 'start-screen';
  Widget? activeWidget;

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return NewExpense(
          onAddExpense: _addExpense,
        );
      },
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = registeredExpenses.indexOf(expense);
    setState(() {
      registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Expense deleted!'),
        duration: const Duration(seconds: 3),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              registeredExpenses.insert(
                expenseIndex,
                expense,
              );
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if (activeScreen == 'start-screen') {
      Widget mainContent = const Expanded(
        child: Center(
          child: Text('No expenses found. Start adding some!'),
        ),
      );
      if (registeredExpenses.isNotEmpty) {
        mainContent = ExpensesList(
          expenseList: registeredExpenses,
          removeExpense: _removeExpense,
        );
      }
      activeWidget = Column(
        children: [
          Text('The list'),
          mainContent,
        ],
      );
    } else {
      throw Exception('Invalid screen type $activeScreen');
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: AppBackground(
        child: activeWidget!,
      ),
    );
  }
}
