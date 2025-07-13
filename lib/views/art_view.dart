import 'package:app_opuz/views/participantes_view.dart';
import 'package:flutter/material.dart';

class ArtView extends StatefulWidget {
  const ArtView({super.key});

  @override
  State<ArtView> createState() => _ArtViewState();
}

class _ArtViewState extends State<ArtView> {
  @override
  Widget build(BuildContext context) {
    return _buildArtView();
  }

  Widget _buildArtView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text('ART', style: TextStyle(fontWeight: FontWeight.w500)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
