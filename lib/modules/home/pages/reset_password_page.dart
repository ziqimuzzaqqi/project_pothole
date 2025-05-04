import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      backgroundColor: const Color(0xFF0E0E1C),
      body: Center(
        child: Text(
          'Reset Password Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}