import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sementara stub: nanti ganti dengan data nyata
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: const Color(0xFF1A1A2B),
      ),
      backgroundColor: const Color(0xFF0E0E1C),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: List.generate(5, (i) => Card(
          color: Colors.grey[300],
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            leading: const Icon(Icons.notifications),
            title: Text('Notification #${i+1}'),
            subtitle: const Text('Detail notification goes here'),
          ),
        )),
      ),
    );
  }
}
