mixin BaseTimerController {
  double get valueTime;
  double get defaultValue;
  void controllTimer();
  void pauseTimer();
  void close();
}