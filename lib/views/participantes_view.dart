import 'package:flutter/material.dart';

class ParticipantesView extends StatefulWidget {
  const ParticipantesView({super.key});

  @override
  State<ParticipantesView> createState() => _ParticipantesViewState();
}

class _ParticipantesViewState extends State<ParticipantesView> {
  final List<Map<String, String>> participantes = [
    {'nombre': 'Juan Pérez', 'cargo': 'Supervisor'},
    {'nombre': 'Ana Gómez', 'cargo': 'Operario'},
    {'nombre': 'Luis Torres', 'cargo': 'Jefe de Seguridad'},
    {'nombre': 'María Ruiz', 'cargo': 'Inspector'},
  ];

  @override
  Widget build(BuildContext context) {
    return _buildParticipantesView();
  }

  Widget _buildParticipantesView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Participantes',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  await Future.delayed(const Duration(seconds: 1));
                },
                child: ListView.builder(
                  itemCount: participantes.length,
                  itemBuilder: (context, index) {
                    final p = participantes[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: Colors.indigo.shade100,
                            child: const Icon(
                              Icons.person,
                              color: Colors.indigo,
                              size: 32,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  p['nombre'] ?? '',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  p['cargo'] ?? '',
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar Enviar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
                child: const Text(
                  'Enviar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
