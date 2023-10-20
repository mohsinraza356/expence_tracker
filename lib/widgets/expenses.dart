import 'package:expence_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter/material.dart';

import '../models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Biryani",
        amount: 20.0,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: "Pulao",
        amount: 20.0,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        title: "Pulao",
        amount: 20.0,
        date: DateTime.now(),
        category: Category.food),
  ];

  void _openAddExpenseOverlay() {
    // showModalBottomSheet(context: context, builder: builder)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
              onPressed: _openAddExpenseOverlay, icon: const Icon(Icons.add))
        ],
      ),
      body: Column(
        children: [
          const Text("The Chart"),
          Expanded(
              child: ExpensesList(
            expenses: _registeredExpenses,
          ))
        ],
      ),
    );
  }
}
