class AutoStartModel {
  final bool focusAutoStart;
  final bool restsAutoStart;

  AutoStartModel({
    required this.focusAutoStart,
    required this.restsAutoStart,
  });

  @override
  String toString() => focusAutoStart && restsAutoStart
      ? 'Focus time and Rests times'
      : focusAutoStart && !restsAutoStart
          ? 'Only focus time'
          : !focusAutoStart && !restsAutoStart ? 'No defined' : 'Only rests times';
}
