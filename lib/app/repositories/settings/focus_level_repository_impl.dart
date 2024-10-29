import 'package:pomodoro_timer/app/core/constants/constants.dart';
import 'package:pomodoro_timer/app/core/models/focus_level_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'focus_level_repository.dart';

class FocusLevelRepositoryImpl extends FocusLevelRepository {
  @override
  Future<FocusLevelModel> getFocusLevel() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    final levelType = shared.getString(Constants.focusLevelKey) ?? 'popular';

    if(levelType == 'begginner') {
      return FocusLevelModel.begginner();
    } else if (levelType == 'popular') {
      return FocusLevelModel.popular();
    } else if (levelType == 'medium') {
      return FocusLevelModel.medium();
    } else {
      return FocusLevelModel.extended();
    }
  }

  @override
  Future<void> setFocusLevel(FocusLevelType level) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    await shared.setString(Constants.focusLevelKey, level.description);
  }
}
