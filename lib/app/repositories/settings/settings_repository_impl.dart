import 'package:pomodoro_timer/app/core/constants/constants.dart';
import 'package:pomodoro_timer/app/modules/settings/models/focus_level_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './settings_repository.dart';

class SettingsRepositoryImpl extends SettingsRepository {
  @override
  Future<FocusLevelType> getFocusLevel() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    final levelType = shared.getString(Constants.focusLevelKey) ?? 'popular';

    if(levelType == 'begginner') {
      return FocusLevelType.begginner;
    } else if (levelType == 'popular') {
      return FocusLevelType.popular;
    } else if (levelType == 'medium') {
      return FocusLevelType.medium;
    } else {
      return FocusLevelType.extended;
    }
  }

  @override
  Future<void> setFocusLevel(FocusLevelType level) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setString(Constants.focusLevelKey, level.description);
  }
}
