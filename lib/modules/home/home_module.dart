import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'home_widget.dart';
import 'pages/notifications_page.dart';

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
  ];
}