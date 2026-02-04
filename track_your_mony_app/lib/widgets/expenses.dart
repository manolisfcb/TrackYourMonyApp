import 'package:flutter/material.dart';
import 'package:track_your_mony_app/models/expense.dart';
import 'package:track_your_mony_app/widgets/expenses_list.dart';
import 'package:track_your_mony_app/widgets/new_expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
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

  void _addExpense() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Screen'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,

        actions: [
          IconButton(onPressed: _addExpense, icon: const Icon(Icons.add)),
        ],
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
