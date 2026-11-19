import 'package:flutter/material.dart';
import '../screens/screen_about.dart';
import '../screens/screen_comments.dart';
import '../screens/screen_contact.dart';
import '../screens/screen_start.dart';

class AppRoutes {
  static const String inicio = '/';
  static const String sobreMi = '/sobre-mi';
  static const String comentarios = '/comentarios';
  static const String contacto = '/contacto';

  static Map<String, WidgetBuilder> rutas = {
    inicio: (context) => const InicioScreen(),
    sobreMi: (context) => const SobreMiScreen(),
    comentarios: (context) => const ComentariosScreen(),
    contacto: (context) => const ContactoScreen(),
  };
}