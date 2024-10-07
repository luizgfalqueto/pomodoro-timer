// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timer_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TimerController on TimerControllerBase, Store {
  Computed<String>? _$buttonTextComputed;

  @override
  String get buttonText =>
      (_$buttonTextComputed ??= Computed<String>(() => super.buttonText,
              name: 'TimerControllerBase.buttonText'))
          .value;
  Computed<String>? _$modeTextComputed;

  @override
  String get modeText =>
      (_$modeTextComputed ??= Computed<String>(() => super.modeText,
              name: 'TimerControllerBase.modeText'))
          .value;

  late final _$circlesAtom =
      Atom(name: 'TimerControllerBase.circles', context: context);

  @override
  ObservableList<dynamic> get circles {
    _$circlesAtom.reportRead();
    return super.circles;
  }

  @override
  set circles(ObservableList<dynamic> value) {
    _$circlesAtom.reportWrite(value, super.circles, () {
      super.circles = value;
    });
  }

  late final _$valueTimeAtom =
      Atom(name: 'TimerControllerBase.valueTime', context: context);

  @override
  double get valueTime {
    _$valueTimeAtom.reportRead();
    return super.valueTime;
  }

  @override
  set valueTime(double value) {
    _$valueTimeAtom.reportWrite(value, super.valueTime, () {
      super.valueTime = value;
    });
  }

  late final _$defaultValueAtom =
      Atom(name: 'TimerControllerBase.defaultValue', context: context);

  @override
  double get defaultValue {
    _$defaultValueAtom.reportRead();
    return super.defaultValue;
  }

  @override
  set defaultValue(double value) {
    _$defaultValueAtom.reportWrite(value, super.defaultValue, () {
      super.defaultValue = value;
    });
  }

  late final _$currentValueTimeAtom =
      Atom(name: 'TimerControllerBase.currentValueTime', context: context);

  @override
  double? get currentValueTime {
    _$currentValueTimeAtom.reportRead();
    return super.currentValueTime;
  }

  @override
  set currentValueTime(double? value) {
    _$currentValueTimeAtom.reportWrite(value, super.currentValueTime, () {
      super.currentValueTime = value;
    });
  }

  late final _$focusedMinsAtom =
      Atom(name: 'TimerControllerBase.focusedMins', context: context);

  @override
  int get focusedMins {
    _$focusedMinsAtom.reportRead();
    return super.focusedMins;
  }

  @override
  set focusedMins(int value) {
    _$focusedMinsAtom.reportWrite(value, super.focusedMins, () {
      super.focusedMins = value;
    });
  }

  late final _$isStartedAtom =
      Atom(name: 'TimerControllerBase.isStarted', context: context);

  @override
  bool get isStarted {
    _$isStartedAtom.reportRead();
    return super.isStarted;
  }

  @override
  set isStarted(bool value) {
    _$isStartedAtom.reportWrite(value, super.isStarted, () {
      super.isStarted = value;
    });
  }

  late final _$TimerControllerBaseActionController =
      ActionController(name: 'TimerControllerBase', context: context);

  @override
  void initController() {
    final _$actionInfo = _$TimerControllerBaseActionController.startAction(
        name: 'TimerControllerBase.initController');
    try {
      return super.initController();
    } finally {
      _$TimerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void controllTimer() {
    final _$actionInfo = _$TimerControllerBaseActionController.startAction(
        name: 'TimerControllerBase.controllTimer');
    try {
      return super.controllTimer();
    } finally {
      _$TimerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pauseTimer() {
    final _$actionInfo = _$TimerControllerBaseActionController.startAction(
        name: 'TimerControllerBase.pauseTimer');
    try {
      return super.pauseTimer();
    } finally {
      _$TimerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void close() {
    final _$actionInfo = _$TimerControllerBaseActionController.startAction(
        name: 'TimerControllerBase.close');
    try {
      return super.close();
    } finally {
      _$TimerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void completeSection() {
    final _$actionInfo = _$TimerControllerBaseActionController.startAction(
        name: 'TimerControllerBase.completeSection');
    try {
      return super.completeSection();
    } finally {
      _$TimerControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
circles: ${circles},
valueTime: ${valueTime},
defaultValue: ${defaultValue},
currentValueTime: ${currentValueTime},
focusedMins: ${focusedMins},
isStarted: ${isStarted},
buttonText: ${buttonText},
modeText: ${modeText}
    ''';
  }
}
