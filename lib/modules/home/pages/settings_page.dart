import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  Widget _tile(String title, IconData icon, String route) {
    return InkWell(
      onTap: () => Modular.to.pushNamed(route),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Icon(icon, color: Colors.black),
            const SizedBox(width: 12),
            Expanded(child: Text(title, style: const TextStyle(fontSize: 16, color: Colors.black))),
            const Icon(Icons.keyboard_arrow_right, color: Colors.black),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Settings',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        _tile('Profile', Icons.person, '/home/profile'),
        _tile('Language', Icons.language, '/home/language'),
        _tile('About', Icons.info, '/home/about'),
      ],
    );
  }
}