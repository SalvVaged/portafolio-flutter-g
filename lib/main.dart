import 'package:flutter/material.dart';
import 'routes/app_routes.dart';
import 'themes/app_theme.dart';

void main() {
  runApp(const MiPortafolioApp());
}

class MiPortafolioApp extends StatelessWidget {
  const MiPortafolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portafolio Personal',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.temaApp,
      initialRoute: AppRoutes.inicio,
      routes: AppRoutes.rutas,
    );
  }
}