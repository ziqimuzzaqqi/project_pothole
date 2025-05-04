import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      backgroundColor: const Color(0xFF0E0E1C),
      body: Center(
        child: Text('User Profile details here',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}