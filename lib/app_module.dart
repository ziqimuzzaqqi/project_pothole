import 'package:flutter_modular/flutter_modular.dart';
import 'modules/auth/auth_module.dart';
import 'modules/home/home_module.dart';
import 'modules/settings/settings_module.dart';
import 'locale_manager.dart';


class AppModule extends Module {
  @override
  final List<Bind> binds = [
    
  ];

  @override
  final List<ModularRoute> routes = [
    // 1) root ('/') → AuthModule, yang punya ChildRoute('/', LoginPage)
    ModuleRoute('/', module: AuthModule()),
    // 2) setelah login → HomeModule
    ModuleRoute('/home', module: HomeModule()),
    // 3) settings bila pakai modul terpisah
    ModuleRoute('/settings', module: SettingsModule()),
    // 4) semua yang lain akan diarahkan ke root
    RedirectRoute('*', to: '/'),
  ];
}