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

  late final _$initControllerAsyncAction =
      AsyncAction('SettingsControllerBase.initController', context: context);

  @override
  Future<void> initController() {
    return _$initControllerAsyncAction.run(() => super.initController());
  }

  late final _$loadTimesAsyncAction =
      AsyncAction('SettingsControllerBase.loadTimes', context: context);

  @override
  Future<void> loadTimes() {
    return _$loadTimesAsyncAction.run(() => super.loadTimes());
  }

  late final _$showBottomSheetAsyncAction =
      AsyncAction('SettingsControllerBase.showBottomSheet', context: context);

  @override
  Future<dynamic> showBottomSheet(BuildContext context) {
    return _$showBottomSheetAsyncAction
        .run(() => super.showBottomSheet(context));
  }

  @override
  String toString() {
    return '''
focusModel: ${focusModel}
    ''';
  }
}
