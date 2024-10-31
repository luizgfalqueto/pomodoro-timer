
abstract class AutoStartRepository {
  Future<void> setAutoStartModel({required bool focusAutoStart, required bool restsAutoStart});
  Future<Map<String, dynamic>> getAutoStartModel();
}