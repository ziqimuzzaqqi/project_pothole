import 'package:flutter/material.dart';
import 'reset_password_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          backgroundColor: const Color(0xFF1A1A2B),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Info'),
              Tab(text: 'Reset Password'),
            ],
          ),
        ),
        backgroundColor: const Color(0xFF0E0E1C),
        body: TabBarView(
          children: [
            _buildInfoTab(),
            const ResetPasswordPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTab() {
    // Placeholder for profile info
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Username: John Doe', style: TextStyle(color: Colors.white, fontSize: 16)),
          SizedBox(height: 12),
          Text('Email: john.doe@example.com', style: TextStyle(color: Colors.white, fontSize: 16)),
        ],
      ),
    );
  }
}