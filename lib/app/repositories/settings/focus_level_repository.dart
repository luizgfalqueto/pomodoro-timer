

import '../../core/models/focus_level_model.dart';

abstract class FocusLevelRepository {
  Future<void> setFocusLevel(FocusLevelType level);
  Future<FocusLevelModel> getFocusLevel();
}