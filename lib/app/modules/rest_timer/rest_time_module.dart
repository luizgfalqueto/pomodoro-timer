import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/rest_timer/rest_time_controller.dart';
import 'package:pomodoro_timer/app/modules/rest_timer/rest_timer_page.dart';

class RestTimeModule extends Module {

  @override
  void binds(Injector i) {
    i.addLazySingleton<RestTimeController>(RestTimeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const RestTimerPage(),
    );
  }
}
