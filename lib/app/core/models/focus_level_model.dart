enum FocusLevelType { begginner, popular, medium, extended, customized }

extension FocusLevelTypeDescription on FocusLevelType {
  String get description {
    switch (this) {
      case FocusLevelType.begginner:
        return 'begginner';
      case FocusLevelType.popular:
        return 'popular';
      case FocusLevelType.medium:
        return 'medium';
      case FocusLevelType.extended:
        return 'extended';
      case FocusLevelType.customized:
        return 'customized';
    }
  }
}

class FocusLevelModel {
  final int focusTime;
  final int restTime;
  final int longRestTime;
  final FocusLevelType level;

  FocusLevelModel({
    required this.focusTime,
    required this.restTime,
    required this.longRestTime,
    required this.level,
  });

  factory FocusLevelModel.begginner() {
    return FocusLevelModel(
      focusTime: 600,
      restTime: 300,
      longRestTime: 600,
      level: FocusLevelType.begginner,
    );
  }

  factory FocusLevelModel.popular() {
    return FocusLevelModel(
      focusTime: 1500,
      restTime: 300,
      longRestTime: 900,
      level: FocusLevelType.popular,
    );
  }

  factory FocusLevelModel.medium() {
    return FocusLevelModel(
      focusTime: 2400,
      restTime: 480,
      longRestTime: 1200,
      level: FocusLevelType.medium,
    );
  }

  factory FocusLevelModel.extended() {
    return FocusLevelModel(
      focusTime: 3600,
      restTime: 600,
      longRestTime: 1500,
      level: FocusLevelType.extended,
    );
  }

  int getMinutes(int value) => value ~/ 60;

  @override
  String toString() =>
      '${getMinutes(focusTime)} min - ${getMinutes(restTime)} min - ${getMinutes(longRestTime)} min';
}
