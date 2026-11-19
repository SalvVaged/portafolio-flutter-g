import 'package:flutter/material.dart';
import '../themes/app_theme.dart';
import '../widgets/footer.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  final TextEditingController _nombreCtrl = TextEditingController();
  final TextEditingController _mensajeCtrl = TextEditingController();
  final TextEditingController _firmaCtrl = TextEditingController();
  String _estado = '';

  @override
  void dispose() {
    _nombreCtrl.dispose();
    _mensajeCtrl.dispose();
    _firmaCtrl.dispose();
    super.dispose();
  }

  void _guardar() {
    final nombre = _nombreCtrl.text.trim();
    final mensaje = _mensajeCtrl.text.trim();
    final firma = _firmaCtrl.text.trim();

    setState(() {
      if (nombre.isEmpty || mensaje.isEmpty || firma.isEmpty) {
        _estado = 'Falta llenar algún campo.';
      } else {
        _estado = 'Listo, guardado por $nombre (Firma: $firma).';
        _nombreCtrl.clear();
        _mensajeCtrl.clear();
        _firmaCtrl.clear();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto y firma'),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contacto',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Número: 0412-3560922',
                    style: TextStyle(color: AppTheme.textoGris, fontSize: 13),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Correo: gzabala.3122@unimar.edu.ve',
                    style: TextStyle(color: AppTheme.textoGris, fontSize: 13),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'GitHub: Guill07',
                    style: TextStyle(color: AppTheme.textoGris, fontSize: 13),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
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
                    'Mensaje y firma',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _nombreCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _mensajeCtrl,
                    maxLines: 3,
                    decoration: const InputDecoration(
                      labelText: 'Mensaje',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextField(
                    controller: _firmaCtrl,
                    decoration: const InputDecoration(
                      labelText: 'Firma o iniciales',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 14),
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
                      onPressed: _guardar,
                      child: const Text(
                        'Guardar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  if (_estado.isNotEmpty) ...[
                    const SizedBox(height: 12),
                    Text(
                      _estado,
                      style: const TextStyle(
                        color: AppTheme.acento,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const PageFooter(
              text: 'Guillermo Zabala • Contacto y firma',
            ),
          ],
        ),
      ),
    );
  }
}