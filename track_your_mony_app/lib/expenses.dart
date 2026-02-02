import 'package:flutter/material.dart';

class Expenses  extends StatefulWidget {
  const Expenses ({super.key});

  @override
  State<Expenses > createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Screen'),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Text('Welcome to Track Your Money App!'),
          Text("The chart will be here soon."),
          Text("The list of expenses will be here soon."),
        ],
      ),
    );
  }
}

