import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/settings/settings_controller.dart';
import 'package:pomodoro_timer/app/modules/settings/settings_page.dart';

class SettingsModule extends Module {

  @override
  void binds(Injector i) {
    i.addLazySingleton(SettingsController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const SettingsPage(),
    );
  }
}
