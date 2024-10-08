import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/core/interfaces/base_timer_controller.dart';
import 'package:pomodoro_timer/app/modules/timer/models/count_times_circle_model.dart';
part 'timer_controller.g.dart';

class TimerController = TimerControllerBase with _$TimerController;

abstract class TimerControllerBase with Store, BaseTimerController {
  int _currentTime = 0;

  @observable
  ObservableList circles = ObservableList();

  @observable
  @override
  double valueTime = 5, defaultValue = 5;

  @observable
  double? currentValueTime;

  @observable
  int focusedMins = 0;

  @observable
  bool isStarted = false;

  @observable
  bool workTime = true;

  @computed
  Color get backgroundColor => workTime ? const Color(0xFFF1F3F5) : const Color(0xFF527e5b);

  @computed
  String get buttonText => isStarted == false ? 'Play' : 'Stop';

  @computed
  String get modeText => valueTime/defaultValue > .5 ? 'Work Mode' : 'Don`t give up!';

  late Timer? timer;

  @action
  void initController() {
    final loadCircles = [
      CountTimesCircleModel(completed: false, inCurse: true),
      CountTimesCircleModel(completed: false, inCurse: false),
      CountTimesCircleModel(completed: false, inCurse: false),
      CountTimesCircleModel(completed: false, inCurse: false),
    ];
    circles.addAll(loadCircles);
    timer = null;
  }

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
            await completeSection();
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
  Future<void> completeSection() async {
    switch (_currentTime) {
      case 0:
        _completeCircle(0, 1);
        _currentTime++;
        break;
      case 1:
        _completeCircle(1, 2);
        _currentTime++;
        break;
      case 2:
        _completeCircle(2, 3);
        _currentTime++;
        break;
      default:
    }
    await takeRest();
  }

  void _completeCircle(int toComplete, int toStart) {
    circles.removeAt(toComplete);
    final newCompleted = CountTimesCircleModel(completed: true, inCurse: false);
    circles.insert(toComplete, newCompleted);
    circles.removeAt(toStart);
    final newStarted = CountTimesCircleModel(completed: false, inCurse: true);
    circles.insert(toStart, newStarted);
  }

  @action
  Future<void> takeRest() async {
    await Modular.to.pushNamed('/timer/rest_time');
  }

}
