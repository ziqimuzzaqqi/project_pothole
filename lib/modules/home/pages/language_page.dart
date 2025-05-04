import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Language')),
      backgroundColor: const Color(0xFF0E0E1C),
      body: Center(
        child: Text('Language selection options', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}