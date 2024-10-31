import 'package:pomodoro_timer/app/core/models/auto_start_model.dart';

abstract class AutoStartService {
  Future<void> setAutoStartModel({required AutoStartModel autoStartModel});
  Future<AutoStartModel> getAutoStartModel();
}