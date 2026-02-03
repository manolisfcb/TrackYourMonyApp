import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();


final Uuid uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.restaurant,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.nightlife_rounded,
  Category.work: Icons.work,
};

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

  String get formattedDate {
    return formatter.format(date);
  }
  
}