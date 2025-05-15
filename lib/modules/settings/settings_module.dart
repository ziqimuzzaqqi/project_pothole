import 'package:flutter_modular/flutter_modular.dart';
import 'pages/settings_page.dart';
import 'pages/profile_page.dart';
import 'pages/notifications_page.dart';
import 'pages/about_page.dart';

class SettingsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const SettingsPage()),
    ChildRoute('/profile', child: (_, __) => const ProfilePage()),
    ChildRoute('/notifications', child: (_, __) => const NotificationsPage()),
    ChildRoute('/about', child: (_, __) => const AboutPage()),
  ];
}
