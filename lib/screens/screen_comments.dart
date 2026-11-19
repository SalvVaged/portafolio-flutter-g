import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import '../widgets/footer.dart';

class ComentariosScreen extends StatefulWidget {
  const ComentariosScreen({super.key});

  @override
  State<ComentariosScreen> createState() => _ComentariosScreenState();
}

class _ComentariosScreenState extends State<ComentariosScreen> {
  final TextEditingController _autorCtrl = TextEditingController();
  final TextEditingController _comentarioCtrl = TextEditingController();
  final _autores = <String>[
    'Eduardo',
    'LiveTech',
  ];
  final _textos = <String>[
    'Te felicito por tu portafolio, eres muy buen programador.',
    'Necesitamos que nos hagas una página web para la tienda de accesorios de teléfono.',
  ];
  String _aviso = '';

  @override
  void dispose() {
    _autorCtrl.dispose();
    _comentarioCtrl.dispose();
    super.dispose();
  }

  void _agregarComentario() {
    final autor = _autorCtrl.text.trim();
    final texto = _comentarioCtrl.text.trim();

    setState(() {
      if (autor.isEmpty || texto.isEmpty) {
        _aviso = 'Escribe tu nombre y un comentario.';
        return;
      }
      _autores.insert(0, autor);
      _textos.insert(0, texto);
      _aviso = '';
      _autorCtrl.clear();
      _comentarioCtrl.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Comentarios'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppTheme.tarjeta,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: Colors.white12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Deja un comentario',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _autorCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Tu nombre',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _comentarioCtrl,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Comentario',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppTheme.acento,
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(vertical: 13),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: _agregarComentario,
                      child: const Text(
                        'Publicar comentario',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  if (_aviso.isNotEmpty) ...[
                    const SizedBox(height: 10),
                    Text(
                      _aviso,
                      style: const TextStyle(color: AppTheme.acento, fontSize: 13),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Comentarios agregados',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            if (_autores.isEmpty)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppTheme.tarjeta,
                  borderRadius: BorderRadius.circular(14),
                  border: Border.all(color: Colors.white12),
                ),
                child: const Text(
                  'Aún no hay comentarios aquí.',
                  style: TextStyle(color: AppTheme.textoGris, fontSize: 13),
                ),
              )
            else
              Column(
                children: List.generate(_autores.length, (i) {
                  return Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(bottom: 10),
                    padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(
                      color: AppTheme.tarjeta,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.white12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _autores[i],
                          style: const TextStyle(
                            color: AppTheme.acento,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _textos[i],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ),
            const PageFooter(
              text: 'Guillermo Zabala • Comentarios',
            ),
          ],
        ),
      ),
    );
  }
}