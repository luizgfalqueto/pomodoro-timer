import 'package:pomodoro_timer/app/core/models/focus_level_model.dart';

abstract class FocusLevelService {
  Future<FocusLevelModel> getFocusLevel(); 
  Future<void> setFocusLevel(FocusLevelType level);
}