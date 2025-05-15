import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageService {
  final ValueNotifier<Locale> localeNotifier;

  LanguageService._(Locale initial)
    : localeNotifier = ValueNotifier<Locale>(initial);

  static Future<LanguageService> init() async {
    final prefs = await SharedPreferences.getInstance();
    final code = prefs.getString('locale') ?? 'en';
    return LanguageService._(Locale(code));
  }

  Future<void> setLocale(String code) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', code);
    localeNotifier.value = Locale(code);
  }

  static namedConstructor() {}
}
