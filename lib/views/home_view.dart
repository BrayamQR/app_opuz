import 'package:app_opuz/views/login_view.dart';
import 'package:app_opuz/views/prevencion_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return _buildHomeView();
  }

  Widget _buildHomeView() {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const LoginView()),
              );
            },
            icon: Icon(Icons.logout),
            tooltip: 'Cerrar sesión',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.indigo.shade100,
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.indigo.shade700,
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Center(
                child: Text(
                  'Admin',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ),
              SizedBox(height: 32),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.shield, color: Colors.indigo),
                  title: Text('Prevención'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PrevencionView()),
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
                  leading: Icon(Icons.people, color: Colors.indigo),
                  title: Text('Trabajadores'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.event_note, color: Colors.indigo),
                  title: Text('Planificador'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(
                    Icons.check_circle_outline,
                    color: Colors.indigo,
                  ),
                  title: Text('Actividades'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.store, color: Colors.indigo),
                  title: Text('Bodega'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {},
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                elevation: 2,
                child: ListTile(
                  leading: Icon(Icons.verified, color: Colors.indigo),
                  title: Text('Calidad'),
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
