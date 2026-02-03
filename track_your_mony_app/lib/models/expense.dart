import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
final Uuid uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.videogame_asset,
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
}