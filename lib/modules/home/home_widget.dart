import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'pages/maps_page.dart';
import 'pages/upload_page.dart';
import 'pages/camera_page.dart';
import 'pages/history_page.dart';
import 'pages/settings_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  final controller = Modular.get<HomeController>();

  static const List<Widget> _pages = <Widget>[
    MapsPage(),
    UploadPage(),
    CameraPage(),
    HistoryPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => controller.setIndex(index));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E0E1C),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A2B),
        title: Text(
          // Tampilkan title sesuai tab aktif
          ['Maps', 'Upload', 'Pothole Detection', 'History', 'Settings']
              [controller.currentIndex],
          style: const TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Notifications',
            onPressed: () {
              // Navigasi ke /home/notifications
              Modular.to.pushNamed('/home/notifications');
            },
          ),
        ],
      ),
      body: SafeArea(child: _pages[controller.currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1A1A2B),
        selectedItemColor: Colors.tealAccent,
        unselectedItemColor: Colors.white70,
        currentIndex: controller.currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.map), label: 'Maps'),
          BottomNavigationBarItem(
              icon: Icon(Icons.upload), label: 'Upload'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: 'Camera'),
          BottomNavigationBarItem(
              icon: Icon(Icons.history), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
