import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../core/interfaces/base_timer_controller.dart';
part 'rest_time_controller.g.dart';

class RestTimeController = RestTimeControllerBase with _$RestTimeController;

abstract class RestTimeControllerBase with Store, BaseTimerController {
  // int _currentTime = 0;

  @observable
  ObservableList circles = ObservableList();

  @observable
  @override
  double valueTime = 300, defaultValue = 300;

  @observable
  double? currentValueTime;

  @observable
  int focusedMins = 0;

  @observable
  bool isStarted = false;

  @observable
  bool workTime = true;

  @computed
  Color get backgroundColor =>
      workTime ? const Color(0xFFF1F3F5) : const Color(0xFF527e5b);

  @computed
  String get buttonText => isStarted == false ? 'Play' : 'Stop';

  @computed
  String get modeText => valueTime / defaultValue > .5 ? 'Rest Time' : 'Relax!';

  late Timer timer = Timer.periodic(
    Duration.zero,
    (timer) {},
  );

  @action
  @override
  void controllTimer() {
    if (isStarted == false) {
      isStarted = true;
      const oneSec = Duration(seconds: 1);
      timer = Timer.periodic(
        oneSec,
        (Timer timer) async {
          if (valueTime <= 1) {
            timer.cancel();
            valueTime = defaultValue;
            isStarted = false;
            closePage();
          } else {
            valueTime--;
          }
        },
      );
    } else {
      pauseTimer();
    }
  }

  @action
  @override
  void pauseTimer() {
    currentValueTime = valueTime;
    timer!.cancel();
    isStarted = false;
    currentValueTime = 0.00;
  }

  @action
  @override
  void close() {
    if (timer != null) {
      timer!.cancel();
    }
  }

  @action
  void closePage() {
    Modular.to.pop();
  }
}
