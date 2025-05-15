import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_pothole/locale_manager.dart';
import '../../shared/services/language_service.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final langService = Modular.get<LanguageService>();
    return Scaffold(
      appBar: AppBar(title: const Text('Language')),
      backgroundColor: const Color(0xFF0E0E1C),
      body: ValueListenableBuilder<Locale>(
        valueListenable: localeNotifier,
        builder: (_, locale, __) {
          return DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: locale.languageCode,
              iconEnabledColor: Colors.white,
              dropdownColor: const Color(0xFF1A1A2B),
              items: const [
                DropdownMenuItem(
                  value: 'en',
                  child: Text('EN', style: TextStyle(color: Colors.white)),
                ),
                DropdownMenuItem(
                  value: 'id',
                  child: Text('ID', style: TextStyle(color: Colors.white)),
                ),
              ],
              onChanged: (val) {
                if (val != null) changeLocale(val);
              },
            ),
          );
        },
      ),
    );
  }
}
