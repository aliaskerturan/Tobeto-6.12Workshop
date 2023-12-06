import 'package:flutter/material.dart';

class Category {
  const Category(
      {required this.id, required this.name, this.color = Colors.orange});

  final String id;
  final String name;
  final Color color;
}
