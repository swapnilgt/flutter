import 'package:expense_tracker/domain/models/expense.dart';

List<Expense> registeredExpenses = [
  Expense(
    title: 'Flutter course',
    amount: 19.99,
    date: DateTime.now(),
    category: Category.WORK,
  ),
  Expense(
    title: 'Cinema',
    amount: 15.69,
    date: DateTime.now(),
    category: Category.LEISURE,
  )
];
