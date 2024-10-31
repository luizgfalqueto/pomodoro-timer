import 'package:pomodoro_timer/app/core/models/auto_start_model.dart';
import 'package:pomodoro_timer/app/repositories/settings/auto-start/auto_start_repository_impl.dart';

import './auto_start_service.dart';

class AutoStartServiceImpl extends AutoStartService {
  @override
  Future<AutoStartModel> getAutoStartModel() async {
    final map = await AutoStartRepositoryImpl().getAutoStartModel();

    return AutoStartModel(
      focusAutoStart: map['focusAutoStart'],
      restsAutoStart: map['restsAutoStart'],
    );
  }

  @override
  Future<void> setAutoStartModel(
          {required AutoStartModel autoStartModel}) async =>
      await AutoStartRepositoryImpl().setAutoStartModel(
        focusAutoStart: autoStartModel.focusAutoStart,
        restsAutoStart: autoStartModel.restsAutoStart,
      );
}
