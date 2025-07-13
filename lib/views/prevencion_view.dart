import 'package:app_opuz/views/charla_cinco_min_view.dart';
import 'package:app_opuz/views/programacion.dart';
import 'package:app_opuz/views/art_view.dart';
import 'package:app_opuz/views/generador_hallasgos_view.dart';
import 'package:app_opuz/views/levantador_hallasgos_view.dart';
import 'package:flutter/material.dart';

class PrevencionView extends StatefulWidget {
  const PrevencionView({super.key});

  @override
  State<PrevencionView> createState() => _PrevencionViewState();
}

class _PrevencionViewState extends State<PrevencionView> {
  @override
  Widget build(BuildContext context) {
    return _buildPrevencionView();
  }

  Widget _buildPrevencionView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Prevencion',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.assignment, color: Colors.indigo),
                  title: Text('ART'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ArtView()),
                    );
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.chat, color: Colors.indigo),
                  title: Text('Charla 5 minutos'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CharlaCincoMinView(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.event, color: Colors.indigo),
                  title: Text('Programacion'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProgramacionView(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.lightbulb_outline, color: Colors.indigo),
                  title: Text('Generador de hallasgos'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => GeneradorHallasgosView(),
                      ),
                    );
                  },
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.fact_check, color: Colors.indigo),
                  title: Text('Levantador de hallazgos'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LevantadorHallasgosView(),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(40),
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    elevation: 6,
                  ),
                  onPressed: () {
                    // Acción SOS
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                        size: 48,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'SOS',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                          color: Colors.white,
                        ),
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
