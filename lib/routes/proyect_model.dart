import 'package:flutter/material.dart';

class proyect_model {
  final String title;
  final String description;
  final IconData icon;
  final List<String> tags ;

  const proyect_model({
    required this.title,
    required this.description,
    required this.icon,
    required this.tags,
  });
}