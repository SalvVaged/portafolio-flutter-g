import 'package:flutter/material.dart';
import '../screens/contacto_screen.dart';
import '../screens/inicio_screen.dart';

class AppRoutes {
  static const String inicio = '/';
  static const String contacto = '/contacto';

  static Map<String, WidgetBuilder> rutas = {
    inicio: (context) => const InicioScreen(),
    contacto: (context) => const ContactoScreen(),
  };
}