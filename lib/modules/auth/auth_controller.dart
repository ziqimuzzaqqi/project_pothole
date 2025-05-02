import 'package:flutter_modular/flutter_modular.dart';

class AuthController {
  String email = '';
  String password = '';

  Future<void> login() async {
    // Contoh simulasi proses login
    if (email == 'test@example.com' && password == '12345678') {
      Modular.to.navigate('/home/');
    } else {
      print('Login gagal: email atau password salah');
    }
  }

  Future<void> signup() async {
    print('Daftar dengan $email');
    Modular.to.navigate('/home/');
  }
}
