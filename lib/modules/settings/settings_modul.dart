import 'package:flutter_modular/flutter_modular.dart';
import 'package:project_pothole/modules/home/pages/about_page.dart';
import 'package:project_pothole/modules/home/pages/notifications_page.dart';
import 'package:project_pothole/modules/home/pages/profile_page.dart';
import 'package:project_pothole/modules/home/pages/settings_page.dart';

class SettingsModule extends Module {
  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (_, __) => const SettingsPage()),
        ChildRoute('/profile', child: (_, __) => const ProfilePage()),
        ChildRoute('/notifications', child: (_, __) => const NotificationsPage()),
        ChildRoute('/about', child: (_, __) => const AboutPage()),
      ];
}
