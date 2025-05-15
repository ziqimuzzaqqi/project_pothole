import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About'), backgroundColor: const Color(0xFF1A1A2B)),
      backgroundColor: const Color(0xFF0E0E1C),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'Pothole Detection App v1.0\nKelompok 4',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
