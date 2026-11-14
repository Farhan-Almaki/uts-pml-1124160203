import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                const SizedBox(height: 12),
                Text(
                  'Farhan Al Maki',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 4),
                Text(
                  '1124160203',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                Text(
                  'Teknik Informatika - Software Engineering',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),

                const Card(
                  child: Column(
                    children: [
                      InfoTile(icon: Icons.email, label: 'Email', value: 'faanfann11@gmail.com'),
                      InfoTile(icon: Icons.phone, label: 'Nomor HP', value: '085281419072'),
                      InfoTile(icon: Icons.class_, label: 'Kelas', value: 'TI 24 P SE 3'),
                      InfoTile(icon: Icons.code, label: 'Akun GitHub', value: 'github.com/Farhan-Almaki'),
                    ],
                  ),
                ),
                const SizedBox(height: 12),

                const Card(
                  child: Column(
                    children: [
                      InfoTile(icon: Icons.computer, label: 'Keahlian', value: 'Web PHP CodeIgniter 3'),
                      InfoTile(icon: Icons.sports_esports, label: 'Hobi', value: 'Gaming & Healing'),
                      InfoTile(icon: Icons.language, label: 'Bahasa', value: 'Indonesia & Arab'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Terima kasih telah melihat profil saya'),
            ),
          );
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blueAccent),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}