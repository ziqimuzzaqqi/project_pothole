import 'package:flutter_modular/flutter_modular.dart';
import 'auth_controller.dart';
import 'login_page.dart';
import 'signup_page.dart';

class AuthModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AuthController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const LoginPage()),
    ChildRoute('/signup', child: (_, __) => const SignUpPage()),
  ];
}
