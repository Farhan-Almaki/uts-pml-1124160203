import 'package:flutter/material.dart';
import '../models/profile.dart';

class EditProfilePage extends StatelessWidget {
  final Profile currentProfile;
  const EditProfilePage({super.key, required this.currentProfile});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('Edit Profil')),
    );
  }
}