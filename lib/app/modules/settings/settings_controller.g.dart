// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsController on SettingsControllerBase, Store {
  Computed<String>? _$textValueTimeComputed;

  @override
  String get textValueTime =>
      (_$textValueTimeComputed ??= Computed<String>(() => super.textValueTime,
              name: 'SettingsControllerBase.textValueTime'))
          .value;

  late final _$valueTimeAtom =
      Atom(name: 'SettingsControllerBase.valueTime', context: context);

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

  @override
  String toString() {
    return '''
valueTime: ${valueTime},
textValueTime: ${textValueTime}
    ''';
  }
}
