import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String bgCategory;

  const Category({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
    this.bgCategory,
  });
}
