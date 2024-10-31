import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/core/models/auto_start_model.dart';
import 'package:pomodoro_timer/app/modules/settings/widgets/focus_level_time_select.dart';
import 'package:pomodoro_timer/app/services/settings/auto-start/auto_start_service_impl.dart';
import 'package:pomodoro_timer/app/services/settings/focus-level/focus_level_service_impl.dart';

import '../../core/models/focus_level_model.dart';
import 'widgets/auto_start_select.dart';
part 'settings_controller.g.dart';

class SettingsController = SettingsControllerBase with _$SettingsController;

abstract class SettingsControllerBase with Store {
  @observable
  FocusLevelModel focusModel = FocusLevelModel.popular();

  @observable
  AutoStartModel autoStartModel = AutoStartModel(
    focusAutoStart: false,
    restsAutoStart: false,
  );

  @action
  Future<void> initController() async {
    await loadTimes();
    await loadAutoStarts();
  }

  Future<void> loadTimes() async {
    final focusLevel = await FocusLevelServiceImpl().getFocusLevel();
    focusModel = focusLevel;
  }

  Future<void> loadAutoStarts() async {
    final autoStart = await AutoStartServiceImpl().getAutoStartModel();
    autoStartModel = autoStart;
  }

  void setFocusModel(FocusLevelModel focus) {
    focusModel = focus;
    _setFocusLevel(focus.level);
  }

  Future<void> setAutoStartModel(AutoStartModel model) async =>
      await _setAutoStartModel(model);

  Future<void> _setFocusLevel(FocusLevelType level) async {
    await FocusLevelServiceImpl().setFocusLevel(level);
  }

  Future<void> _setAutoStartModel(AutoStartModel model) async {
    await AutoStartServiceImpl().setAutoStartModel(autoStartModel: model);
    autoStartModel = model;
  }

  @action
  Future showBottomSheetFocusTimeModel(
    BuildContext context,
  ) async {
    await showModalBottomSheet<FocusLevelType>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return FocusLevelTimeSelect(
          setFocusModel: (value) => setFocusModel(value),
          currentLevelType: focusModel.level,
        );
      },
    );
  }

  @action
  Future showBottomSheetAutoStartModel(
    BuildContext context,
  ) async {
    await showModalBottomSheet<AutoStartModel>(
      context: context,
      isScrollControlled: true,
      builder: (context) {
        return AutoStartSelect(
          setAutoStart: (value) => setAutoStartModel(value),
          autoStartModel: autoStartModel,
        );
      },
    );
  }
}
