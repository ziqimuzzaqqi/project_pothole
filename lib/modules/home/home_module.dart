import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'home_widget.dart';
import 'pages/maps_page.dart';
import 'pages/upload_page.dart';
import 'pages/camera_page.dart';
import 'pages/history_page.dart';
import 'pages/settings_page.dart';
import 'pages/notifications_page.dart';
import 'pages/profile_page.dart';
import 'pages/reset_password_page.dart';
import 'pages/language_page.dart';
import 'pages/about_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    // Singleton controller untuk home navigation
    Bind.singleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    // Root route untuk HomeWidget
    ChildRoute('/', child: (_, __) => const HomeWidget()),
    ChildRoute('/notifications', child: (_, __) => const NotificationsPage()),
    ChildRoute('/profile', child: (_, __) => const ProfilePage()),
    ChildRoute('/reset-password', child: (_, __) => const ResetPasswordPage()),
    ChildRoute('/language', child: (_, __) => const LanguagePage()),
    ChildRoute('/about', child: (_, __) => const AboutPage()),
  ];
}