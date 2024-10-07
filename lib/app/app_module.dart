import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/modules/home/home_module.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_module.dart';

class AppModule extends Module {

  @override
  void routes(RouteManager r) {
    r.module('/home/', module: HomeModule());
    r.module('/timer/', module: TimerModule());
  }

}