import 'dart:async';

import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/modules/timer/models/count_times_circle_model.dart';
part 'timer_controller.g.dart';

class TimerController = TimerControllerBase with _$TimerController;

abstract class TimerControllerBase with Store {
  int _currentTime = 0;

  @observable
  ObservableList circles = ObservableList();

  @observable
  double valueTime = 1500, defaultValue = 1500;

  @observable
  double? currentValueTime;

  @observable
  int focusedMins = 0;

  @observable
  bool isStarted = false;

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
  void controllTimer() {
    if (isStarted == false) {
      isStarted = true;
      const oneSec = Duration(seconds: 1);
      timer = Timer.periodic(
        oneSec,
        (Timer timer) {
          if (valueTime <= 1) {
            completeSection();
            timer.cancel();
            valueTime = defaultValue;
            isStarted = false;
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
  void pauseTimer() {
    currentValueTime = valueTime;
    timer!.cancel();
    isStarted = false;
    currentValueTime = 0.00;
  }

  @action
  void close() {
    if (timer != null) {
      timer!.cancel();
    }
  }

  @action
  void completeSection() {
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
  }

  void _completeCircle(int toComplete, int toStart) {
    circles.removeAt(toComplete);
    final newCompleted = CountTimesCircleModel(completed: true, inCurse: false);
    circles.insert(toComplete, newCompleted);
    circles.removeAt(toStart);
    final newStarted = CountTimesCircleModel(completed: false, inCurse: true);
    circles.insert(toStart, newStarted);
  }
}
