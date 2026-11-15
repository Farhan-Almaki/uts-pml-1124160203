import 'package:flutter/material.dart';
import '../main.dart';
import '../models/profile.dart';
import '../widgets/info_tile.dart';
import 'about_page.dart';
import 'login_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Profile myProfile = Profile(
    nama: 'Farhan Al Maki',
    nim: '1124160203',
    prodi: 'Teknik Informatika',
    kelas: 'TI 24 P SE 3',
    email: 'farhan.almaki@student.ac.id',
    noHp: '081234567890',
    bio: 'Mahasiswa Semester 5 yang tertarik pada pengembangan aplikasi mobile dengan Flutter.',
    github: 'github.com/Farhan-Almaki',
  );

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(title: const Text('Profil Saya'), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(myProfile.nama),
              accountEmail: Text(myProfile.email),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/foto_profil.jpg'),
              ),
              decoration: const BoxDecoration(color: Colors.blueAccent),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profil'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('Tentang Saya'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
            SwitchListTile(
              secondary: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
              title: const Text('Mode Gelap'),
              value: isDarkMode,
              onChanged: (bool value) {
                themeNotifier.value = value ? ThemeMode.dark : ThemeMode.light;
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Keluar', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/foto_profil.jpg'),
            ),
            const SizedBox(height: 16),
            Text(
              myProfile.nama,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(
              '${myProfile.nim} | ${myProfile.kelas}',
              style: TextStyle(color: Colors.grey[600], fontSize: 15),
            ),
            Text(
              myProfile.prodi,
              style: const TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 12),
            Text(
              myProfile.bio,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
            const Divider(height: 32),
            InfoTile(icon: Icons.email, label: 'Email', value: myProfile.email),
            InfoTile(icon: Icons.phone, label: 'No. HP', value: myProfile.noHp),
            InfoTile(icon: Icons.code, label: 'GitHub', value: myProfile.github),
          ],
        ),
      ),
    );
  }
}