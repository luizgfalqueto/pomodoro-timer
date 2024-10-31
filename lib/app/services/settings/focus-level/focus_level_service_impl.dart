import 'package:pomodoro_timer/app/repositories/settings/focus-level/focus_level_repository_impl.dart';

import '../../../core/models/focus_level_model.dart';
import './focus_level_service.dart';

class FocusLevelServiceImpl extends FocusLevelService {
  @override
  Future<FocusLevelModel> getFocusLevel() async {
    final levelType = await FocusLevelRepositoryImpl().getFocusLevel();

    if (levelType == 'begginner') {
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
  Future<void> setFocusLevel(FocusLevelType level) async =>
      await FocusLevelRepositoryImpl().setFocusLevel(level.description);
}
