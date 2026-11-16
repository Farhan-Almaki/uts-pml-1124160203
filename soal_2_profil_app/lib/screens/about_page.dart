import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tentang Saya'), centerTitle: true),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Riwayat Pendidikan',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Icon(Icons.school, color: Colors.blueAccent),
              title: Text('Global Institute of Technology and Business'),
              subtitle: Text('S1 Teknik Informatika - Konsentrasi Software Engineering (2024 - Sekarang)'),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 10),
            child: ListTile(
              leading: Icon(Icons.school, color: Colors.blueAccent),
              title: Text('SMAS Babussalam Islamic Education Center'),
              subtitle: Text('Ilmu Pengetahuan Alam (IPA) (2017 - 2023)'),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Keahlian Teknis',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Card(
            margin: EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Flutter & Dart Mobile Development Dasar'),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('Git & GitHub Version Control'),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('UI/UX Dasar & Material Design 3'),
            ),
          ),
          Card(
            margin: EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(Icons.check_circle, color: Colors.green),
              title: Text('PHP & CodeIgniter 3 (CI3)'),
            ),
          ),
          SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: Icon(Icons.info_outline, color: Colors.blueAccent),
              title: Text('Versi Aplikasi 1.0.0'),
              subtitle: Text('Dibuat oleh Farhan Al Maki (1124160203) - UTS Pemrograman Mobile'),
            ),
          ),
        ],
      ),
    );
  }
}