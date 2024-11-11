import 'package:expense_tracker/data/dummy_expenese.dart';
import 'package:expense_tracker/ui/app_background.dart';
import 'package:expense_tracker/ui/expenses_list/expenses_list.dart';
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

  @override
  Widget build(BuildContext context) {
    if (activeScreen == 'start-screen') {
      activeWidget = Column(
        children: [
          Text('The list'),
          ExpensesList(expenseList: registeredExpenses),
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
            onPressed: () {},
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
