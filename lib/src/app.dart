import 'package:flutter/material.dart';
import 'package:ui_study/src/ui/animation_controller/animation_controller_study.dart';

import 'ui/ui.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          restorationScopeId: 'app',
          theme: ThemeData(),
          darkTheme: ThemeData.light(),
          themeMode: settingsController.themeMode,
          initialRoute: AnimationControllerStudy.routeName,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  case AnimationControllerStudy.routeName:
                    return const AnimationControllerStudy();
                  default:
                    return const SizedBox();
                }
              },
            );
          },
        );
      },
    );
  }
}
