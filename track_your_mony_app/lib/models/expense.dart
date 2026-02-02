import 'package:flutter/rendering.dart';
import 'package:uuid/uuid.dart';
final Uuid uuid = Uuid();

enum Category { food, travel, leisure, work }


class Expense {
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;  

  Expense({
    required this.category,
    required this.title,
    required this.amount,
    required this.date,
  }): id = uuid.v4();
}