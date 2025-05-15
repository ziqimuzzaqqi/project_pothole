import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'home_widget.dart';
import 'pages/maps_page.dart';
import 'pages/upload_page.dart';
import 'pages/camera_page.dart';
import 'pages/history_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const HomeWidget()),
    ChildRoute('/maps', child: (_, __) => const MapsPage()),
    ChildRoute('/upload', child: (_, __) => const UploadPage()),
    ChildRoute('/camera', child: (_, __) => const CameraPage()),
    ChildRoute('/history', child: (_, __) => HistoryPage()),
  ];
}
