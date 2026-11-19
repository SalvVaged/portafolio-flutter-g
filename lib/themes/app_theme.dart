import 'package:flutter/material.dart';

class AppTheme {
  static const Color fondo = Color(0xFF141414);
  static const Color tarjeta = Color(0xFF1F1F1F);
  static const Color acento = Color(0xFFFF8C00);
  static const Color textoGris = Color(0xFFC2C2C2);

  static ThemeData get temaApp {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: fondo,
      colorScheme: const ColorScheme.dark(
        primary: acento,
        secondary: acento,
        surface: tarjeta,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: fondo,
        elevation: 0,
      ),
    );
  }
}