import 'package:flutter/material.dart';
import 'package:track_your_mony_app/models/expense.dart';
import 'package:track_your_mony_app/widgets/expenses_list.dart';
class Expenses  extends StatefulWidget {
  const Expenses ({super.key});

  @override
  State<Expenses > createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses > {

  final List<Expense> registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 19.99,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Cinema',
      amount: 15.69,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Groceries',
      amount: 150.12,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Bus Ticket',
      amount: 2.80,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Welcome to Track Your Money App!'),
          Text("The chart will be here soon."),
          Expanded(child: ExpensesList(expenses: registeredExpenses)),
        ],
      ),
    );
  }
}

