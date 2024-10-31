abstract class FocusLevelRepository {
  Future<void> setFocusLevel(String level);
  Future<String> getFocusLevel();
}
