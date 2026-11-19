import 'package:flutter/material.dart';
import '../widgets/card.dart';
import '../widgets/footer.dart';

class SobreMiScreen extends StatelessWidget {
  const SobreMiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre mí'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SectionCard(
              title: 'Sobre mí',
              description:
                  'Soy Guillermo Zabala, estudiante de Ingeniería de Sistemas. Me gusta resolver problemas de programación, tocar cosas en la compu y armar proyectos sencillos que funcionen bien.',
              icon: Icons.person_outline,
              tags: ['Guillermo Zabala', 'Ing. de Sistemas', 'Flutter'],
            ),
            SizedBox(height: 14),
            SectionCard(
              title: 'Hobbies',
              description:
                  'Cuando tengo rato libre juego en PC, de vez en cuando juego fútbol y me gustan las apuestas deportivas.',
              icon: Icons.sports_esports_outlined,
              tags: ['PC', 'Fútbol', 'Apuestas deportivas'],
            ),
            SizedBox(height: 14),
            SectionCard(
              title: 'Lo que hago',
              description:
                  'Voy armando mis proyectos paso a paso, ordenando carpetas, probando que corra sin errores y subiendo avances a GitHub.',
              icon: Icons.code,
              tags: ['Proyectos', 'GitHub', 'Práctica'],
            ),
            PageFooter(
              text: 'Guillermo Zabala • Sobre mí',
            ),
          ],
        ),
      ),
    );
  }
}