import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_controller.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_page.dart';

class TimerModule extends Module {

  @override
  void binds(Injector i) {
    i.addLazySingleton<TimerController>(() => TimerController()..initController());
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => const TimerPage(),
    );
  }
}
