import 'package:pomodoro_timer/app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'focus_level_repository.dart';

class FocusLevelRepositoryImpl extends FocusLevelRepository {
  @override
  Future<String> getFocusLevel() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    return shared.getString(Constants.focusLevelKey) ?? 'popular';
  }

  @override
  Future<void> setFocusLevel(String level) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setString(Constants.focusLevelKey, level);
  }
}
