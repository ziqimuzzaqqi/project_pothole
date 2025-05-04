import 'package:flutter/material.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String _selectedLang = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
        backgroundColor: const Color(0xFF1A1A2B),
      ),
      backgroundColor: const Color(0xFF0E0E1C),
      body: Column(
        children: [
          RadioListTile<String>(
            title: const Text('English', style: TextStyle(color: Colors.white)),
            value: 'en',
            groupValue: _selectedLang,
            onChanged: (val) => setState(() => _selectedLang = val!),
          ),
          RadioListTile<String>(
            title: const Text('Bahasa Indonesia', style: TextStyle(color: Colors.white)),
            value: 'id',
            groupValue: _selectedLang,
            onChanged: (val) => setState(() => _selectedLang = val!),
          ),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              // TODO: apply language change
            },
            style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 48)),
            child: const Text('Save'),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}