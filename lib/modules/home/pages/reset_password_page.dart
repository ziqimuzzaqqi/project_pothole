import 'package:flutter/material.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentController = TextEditingController();
  final TextEditingController _newController = TextEditingController();
  final TextEditingController _confirmController = TextEditingController();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // TODO: implement reset logic
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Password berhasil direset')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              controller: _currentController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Current Password',
                border: OutlineInputBorder(),
              ),
              validator: (v) => v!.isEmpty ? 'Masukkan password lama' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _newController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'New Password',
                border: OutlineInputBorder(),
              ),
              validator: (v) => v!.length < 8 ? 'Password minimal 8 karakter' : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _confirmController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
              validator: (v) => v != _newController.text ? 'Password tidak cocok' : null,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 48)),
              child: const Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}
