// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsController on SettingsControllerBase, Store {
  late final _$focusModelAtom =
      Atom(name: 'SettingsControllerBase.focusModel', context: context);

  @override
  FocusLevelModel get focusModel {
    _$focusModelAtom.reportRead();
    return super.focusModel;
  }

  @override
  set focusModel(FocusLevelModel value) {
    _$focusModelAtom.reportWrite(value, super.focusModel, () {
      super.focusModel = value;
    });
  }

  late final _$autoStartModelAtom =
      Atom(name: 'SettingsControllerBase.autoStartModel', context: context);

  @override
  AutoStartModel get autoStartModel {
    _$autoStartModelAtom.reportRead();
    return super.autoStartModel;
  }

  @override
  set autoStartModel(AutoStartModel value) {
    _$autoStartModelAtom.reportWrite(value, super.autoStartModel, () {
      super.autoStartModel = value;
    });
  }

  late final _$initControllerAsyncAction =
      AsyncAction('SettingsControllerBase.initController', context: context);

  @override
  Future<void> initController() {
    return _$initControllerAsyncAction.run(() => super.initController());
  }

  late final _$showBottomSheetFocusTimeModelAsyncAction = AsyncAction(
      'SettingsControllerBase.showBottomSheetFocusTimeModel',
      context: context);

  @override
  Future<dynamic> showBottomSheetFocusTimeModel(BuildContext context) {
    return _$showBottomSheetFocusTimeModelAsyncAction
        .run(() => super.showBottomSheetFocusTimeModel(context));
  }

  late final _$showBottomSheetAutoStartModelAsyncAction = AsyncAction(
      'SettingsControllerBase.showBottomSheetAutoStartModel',
      context: context);

  @override
  Future<dynamic> showBottomSheetAutoStartModel(BuildContext context) {
    return _$showBottomSheetAutoStartModelAsyncAction
        .run(() => super.showBottomSheetAutoStartModel(context));
  }

  @override
  String toString() {
    return '''
focusModel: ${focusModel},
autoStartModel: ${autoStartModel}
    ''';
  }
}
