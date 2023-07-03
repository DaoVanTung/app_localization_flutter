// import 'dart:ui';

import 'package:flutter/material.dart';

class SettingsController {
  SettingsController._();
  static final _instance = SettingsController._();
  factory SettingsController() {
    return _instance;
  }

  ValueNotifier<Locale> currentLocale = ValueNotifier(const Locale('vi'));

  void switchLocale() {
    if (currentLocale.value.languageCode == 'vi') {
      currentLocale.value = const Locale('en');
    } else {
      currentLocale.value = const Locale('vi');
    }
  }
}
