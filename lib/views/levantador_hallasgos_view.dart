import 'package:flutter/material.dart';

class LevantadorHallasgosView extends StatefulWidget {
  const LevantadorHallasgosView({super.key});

  @override
  State<LevantadorHallasgosView> createState() =>
      _LevantadorHallasgosViewState();
}

class _LevantadorHallasgosViewState extends State<LevantadorHallasgosView> {
  @override
  Widget build(BuildContext context) {
    return _buildLevantadorHallasgoView();
  }

  Widget _buildLevantadorHallasgoView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Hallasgo corregido',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 32,
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: FractionallySizedBox(
                            heightFactor: 0.35,
                            widthFactor: 1.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(24),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(
                                      (0.08 * 255).toInt(),
                                    ),
                                    blurRadius: 10,
                                    offset: const Offset(0, -2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 24),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      'Esta es la solucion del hallazgo',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text(
                                        'Cerrar',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Descripcion de la solucion',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                            top: 32,
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: FractionallySizedBox(
                            heightFactor: 0.35,
                            widthFactor: 1.0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(24),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withAlpha(
                                      (0.08 * 255).toInt(),
                                    ),
                                    blurRadius: 10,
                                    offset: const Offset(0, -2),
                                  ),
                                ],
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const SizedBox(height: 24),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 24,
                                    ),
                                    child: Text(
                                      'Esta es la información del responsable',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: const Text(
                                        'Cerrar',
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: const Text(
                    'Responsable',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 20),
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
      ),
    );
  }
}
