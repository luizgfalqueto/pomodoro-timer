import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/repositories/settings/settings_repository_impl.dart';

import 'models/focus_level_model.dart';
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
    final focusLevel = await SettingsRepositoryImpl().getFocusLevel();
    switch (focusLevel) {
      case FocusLevelType.begginner:
        focusModel = FocusLevelModel.begginner();
      case FocusLevelType.popular:
        focusModel = FocusLevelModel.popular();
      case FocusLevelType.medium:
        focusModel = FocusLevelModel.medium();
      case FocusLevelType.extended:
        focusModel = FocusLevelModel.extended();
    }
  }

  Future<void> _setFocusLevel(FocusLevelType level) async {
    await SettingsRepositoryImpl().setFocusLevel(level);
  }

  @action
  Future showBottomSheet(
    BuildContext context,
  ) async {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: MediaQuery.of(context).size.width * .95,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Select your focus level',
                style: context.normalTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CheckboxListTile(
                value: focusModel.level == FocusLevelType.begginner,
                title: const Text('Begginer'),
                subtitle: Text(
                  FocusLevelModel.begginner().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  focusModel = FocusLevelModel.begginner();
                  _setFocusLevel(FocusLevelType.begginner);
                  Modular.to.pop();
                },
              ),
              CheckboxListTile(
                value: focusModel.level == FocusLevelType.popular,
                title: const Text('Popular'),
                subtitle: Text(
                  FocusLevelModel.popular().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  focusModel = FocusLevelModel.popular();
                  _setFocusLevel(FocusLevelType.popular);
                  Modular.to.pop();
                },
              ),
              CheckboxListTile(
                value: focusModel.level == FocusLevelType.medium,
                title: const Text('Medium'),
                subtitle: Text(
                  FocusLevelModel.medium().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  focusModel = FocusLevelModel.medium();
                  _setFocusLevel(FocusLevelType.medium);
                  Modular.to.pop();
                },
              ),
              CheckboxListTile(
                value: focusModel.level == FocusLevelType.extended,
                title: const Text('Extended'),
                subtitle: Text(
                  FocusLevelModel.extended().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  focusModel = FocusLevelModel.extended();
                  _setFocusLevel(FocusLevelType.extended);
                  Modular.to.pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
