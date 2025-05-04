import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'home_widget.dart';
import 'pages/maps_page.dart';
import 'pages/upload_page.dart';
import 'pages/camera_page.dart';
import 'pages/history_page.dart';
import 'pages/settings_page.dart';
import 'pages/profile_page.dart';
import 'pages/language_page.dart';
import 'pages/about_page.dart';
import 'pages/notifications_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomeWidget()),
    ChildRoute('/notifications', child: (_, __) => const NotificationsPage()),
    // Settings subpages
    ChildRoute('/profile', child: (_, __) => const ProfilePage()),
    ChildRoute('/language', child: (_, __) => const LanguagePage()),
    ChildRoute('/about', child: (_, __) => const AboutPage()),
  ];
}