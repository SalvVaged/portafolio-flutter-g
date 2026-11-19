import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class PageFooter extends StatelessWidget {
  final String text;

  const PageFooter({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
      margin: const EdgeInsets.only(top: 12),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: Colors.white12)),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 12,
          color: AppTheme.textoGris,
        ),
      ),
    );
  }
}