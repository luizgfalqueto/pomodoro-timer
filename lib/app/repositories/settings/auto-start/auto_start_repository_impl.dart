import 'package:pomodoro_timer/app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import './auto_start_repository.dart';

class AutoStartRepositoryImpl extends AutoStartRepository {
  @override
  Future<Map<String, dynamic>> getAutoStartModel() async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    final focus =  shared.getBool(Constants.focusAutoStartKey);
    final rests =  shared.getBool(Constants.restsAutoStartKey);

    return {
      'focusAutoStart': focus ?? false,
      'restsAutoStart': rests ?? false
    };
  }

  @override
  Future<void> setAutoStartModel({required bool focusAutoStart, required bool restsAutoStart}) async {
    SharedPreferences shared = await SharedPreferences.getInstance();

    await shared.setBool(Constants.focusAutoStartKey, focusAutoStart);
    await shared.setBool(Constants.restsAutoStartKey, restsAutoStart);
  }

}