import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'locale_manager.dart';
import 'app_module.dart';
import 'app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadInitialLocale();
  runApp(
    ModularApp(
      module: AppModule(),
      child: const AppWidget(),
    ),
  );
}
