class CountTimesCircleModel {
  final bool completed;
  final bool inCurse;

  CountTimesCircleModel({
    required this.completed,
    required this.inCurse,
  });

  CountTimesCircleModel copyWith({
    bool? completed,
    bool? inCurse,
  }) {
    return CountTimesCircleModel(
      completed: completed ?? this.completed,
      inCurse: inCurse ?? this.inCurse,
    );
  }
}
