import 'package:flutter/material.dart';

import 'src/app.dart';
import 'src/ui/ui.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();

  runApp(MyApp(settingsController: settingsController));
}
