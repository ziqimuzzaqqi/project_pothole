import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthController {
  String email = '';
  String password = '';
  String confirmPassword = '';
  final ValueNotifier<bool> isLoading = ValueNotifier(false);

  Future<bool> login() async {
    // Contoh simulasi proses login
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;

    if (email == 'test@example.com' && password == 'password') {
      Modular.to.navigate('/home/');
      return true;
    } else {
      // Tampilkan pesan error
      print('Login gagal!');
      return false;
    }
  }

  Future<bool> signup() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;

    if (password != confirmPassword) {
      return false;
    }
    Modular.to.navigate('/home/'); 
    return true;
  }
}

