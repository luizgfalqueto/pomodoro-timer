import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pomodoro_timer/app/core/ui/ui_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');
    return ScreenUtilInit(
      designSize:  const Size(390, 844),
      builder: (_, __) {
        return MaterialApp.router(
          title: UiConfig.title,
          theme: UiConfig.theme,
          debugShowCheckedModeBanner: false,
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
        );
      },
    );
  }
}
