import 'package:flutter_modular/flutter_modular.dart';

class HomeController {
  /// Index layar yang sedang aktif
  int currentIndex = 0;

  /// Pindah ke tab lain
  void setIndex(int idx) {
    currentIndex = idx;
    // Kalau perlu reaktif, bisa tambahkan callback atau pakai ValueNotifier
  }
}