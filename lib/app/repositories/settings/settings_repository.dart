import 'package:pomodoro_timer/app/modules/settings/models/focus_level_model.dart';

abstract class SettingsRepository {
  Future<void> setFocusLevel(FocusLevelType level);
  Future<FocusLevelType> getFocusLevel();
}