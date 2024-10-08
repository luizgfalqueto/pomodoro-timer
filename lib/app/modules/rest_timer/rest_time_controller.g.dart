// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rest_time_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$RestTimeController on RestTimeControllerBase, Store {
  Computed<Color>? _$backgroundColorComputed;

  @override
  Color get backgroundColor => (_$backgroundColorComputed ??= Computed<Color>(
          () => super.backgroundColor,
          name: 'RestTimeControllerBase.backgroundColor'))
      .value;
  Computed<String>? _$buttonTextComputed;

  @override
  String get buttonText =>
      (_$buttonTextComputed ??= Computed<String>(() => super.buttonText,
              name: 'RestTimeControllerBase.buttonText'))
          .value;
  Computed<String>? _$modeTextComputed;

  @override
  String get modeText =>
      (_$modeTextComputed ??= Computed<String>(() => super.modeText,
              name: 'RestTimeControllerBase.modeText'))
          .value;

  late final _$circlesAtom =
      Atom(name: 'RestTimeControllerBase.circles', context: context);

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
      Atom(name: 'RestTimeControllerBase.valueTime', context: context);

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
      Atom(name: 'RestTimeControllerBase.defaultValue', context: context);

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
      Atom(name: 'RestTimeControllerBase.currentValueTime', context: context);

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
      Atom(name: 'RestTimeControllerBase.focusedMins', context: context);

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
      Atom(name: 'RestTimeControllerBase.isStarted', context: context);

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

  late final _$workTimeAtom =
      Atom(name: 'RestTimeControllerBase.workTime', context: context);

  @override
  bool get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(bool value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$RestTimeControllerBaseActionController =
      ActionController(name: 'RestTimeControllerBase', context: context);

  @override
  void controllTimer() {
    final _$actionInfo = _$RestTimeControllerBaseActionController.startAction(
        name: 'RestTimeControllerBase.controllTimer');
    try {
      return super.controllTimer();
    } finally {
      _$RestTimeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pauseTimer() {
    final _$actionInfo = _$RestTimeControllerBaseActionController.startAction(
        name: 'RestTimeControllerBase.pauseTimer');
    try {
      return super.pauseTimer();
    } finally {
      _$RestTimeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void close() {
    final _$actionInfo = _$RestTimeControllerBaseActionController.startAction(
        name: 'RestTimeControllerBase.close');
    try {
      return super.close();
    } finally {
      _$RestTimeControllerBaseActionController.endAction(_$actionInfo);
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
workTime: ${workTime},
backgroundColor: ${backgroundColor},
buttonText: ${buttonText},
modeText: ${modeText}
    ''';
  }
}
