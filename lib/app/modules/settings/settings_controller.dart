import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/modules/settings/widgets/focus_level_time_select.dart';
import 'package:pomodoro_timer/app/repositories/settings/focus_level_repository_impl.dart';

import '../../core/models/focus_level_model.dart';
part 'settings_controller.g.dart';

class SettingsController = SettingsControllerBase with _$SettingsController;

abstract class SettingsControllerBase with Store {
  @observable
  FocusLevelModel focusModel = FocusLevelModel.popular();

  @action
  Future<void> initController() async {
    await loadTimes();
  }

  @action
  Future<void> loadTimes() async {
    final focusLevel = await FocusLevelRepositoryImpl().getFocusLevel();
    focusModel = focusLevel;
  }

  void setFocusModel(FocusLevelModel focus) {
    focusModel = focus;
    _setFocusLevel(focus.level);
  }

  Future<void> _setFocusLevel(FocusLevelType level) async {
    await FocusLevelRepositoryImpl().setFocusLevel(level);
  }

  @action
  Future showBottomSheet(
    BuildContext context,
  ) async {
    final typeFocusLevel = await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FocusLevelTimeSelect(
          setFocusModel: (value) => setFocusModel(value),
          currentLevelType: focusModel.level,
        );
      },
    );
    _setFocusLevel(typeFocusLevel);
  }
}
