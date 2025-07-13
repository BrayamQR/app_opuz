import 'package:app_opuz/views/participantes_view.dart';
import 'package:flutter/material.dart';

class CharlaCincoMinView extends StatefulWidget {
  const CharlaCincoMinView({super.key});

  @override
  State<CharlaCincoMinView> createState() => _CharlaCincoMinViewState();
}

class _CharlaCincoMinViewState extends State<CharlaCincoMinView> {
  @override
  Widget build(BuildContext context) {
    return _buildCharlaCincoMinView();
  }

  Widget _buildCharlaCincoMinView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Charla 5 minutos',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Selecciona una opción',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                items: const [
                  DropdownMenuItem(value: 'opcion1', child: Text('Opción 1')),
                  DropdownMenuItem(value: 'opcion2', child: Text('Opción 2')),
                  DropdownMenuItem(value: 'opcion3', child: Text('Opción 3')),
                ],
                onChanged: (value) {
                  // Acción al seleccionar
                },
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Text(
                    '00:00:00',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.indigo.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ParticipantesView(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Siguiente',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
