import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Global notifier untuk locale aplikasi
final ValueNotifier<Locale> localeNotifier = ValueNotifier(const Locale('en'));

/// Panggil sekali di main() sebelum runApp
Future<void> loadInitialLocale() async {
  final prefs = await SharedPreferences.getInstance();
  final code = prefs.getString('locale') ?? 'en';
  localeNotifier.value = Locale(code);
}

/// Panggil untuk ganti bahasa, otomatis notify & simpan ke prefs
Future<void> changeLocale(String code) async {
  localeNotifier.value = Locale(code);
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('locale', code);
}
