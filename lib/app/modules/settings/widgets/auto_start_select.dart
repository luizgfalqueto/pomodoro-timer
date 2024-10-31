import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/models/auto_start_model.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

class AutoStartSelect extends StatelessWidget {
  final AutoStartModel autoStartModel;
  final Function(AutoStartModel) setAutoStart;
  final ValueNotifier<bool> _focusVN;
  final ValueNotifier<bool> _restVN;

  AutoStartSelect({
    super.key,
    required this.autoStartModel,
    required this.setAutoStart,
  })  : _focusVN = ValueNotifier<bool>(autoStartModel.focusAutoStart),
        _restVN = ValueNotifier<bool>(autoStartModel.restsAutoStart);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .95,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Customize auto-start',
            style: context.normalTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Focus time auto-start',
                style: context.normalTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _focusVN,
                builder: (context, focusValue, child) {
                  return Switch(
                    value: focusValue,
                    activeColor: context.primaryColor,
                    onChanged: (value) {
                      _focusVN.value = !_focusVN.value;
                      setAutoStart(
                        AutoStartModel(
                          focusAutoStart: value,
                          restsAutoStart: autoStartModel.restsAutoStart,
                        ),
                      );
                    },
                  );
                },
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rest times auto-start',
                style: context.normalTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _restVN,
                builder: (context, restValue, child) {
                  return Switch(
                    value: restValue,
                    activeColor: context.primaryColor,
                    onChanged: (value) {
                      _restVN.value = !_restVN.value;
                      setAutoStart(
                        AutoStartModel(
                          focusAutoStart: autoStartModel.focusAutoStart,
                          restsAutoStart: value,
                        ),
                      );
                    },
                  );
                },
              )
            ],
          )
          // ValueListenableBuilder<FocusLevelType>(
          //   valueListenable: _currentFocusLevelTypeVN,
          //   builder: (context, value, child) {
          //     return CheckboxListTile(
          //       value:
          //           _currentFocusLevelTypeVN.value == FocusLevelType.begginner,
          //       title: const Text('Begginer'),
          //       subtitle: Text(
          //         FocusLevelModel.begginner().toString(),
          //       ),
          //       activeColor: context.primaryColor,
          //       onChanged: (value) {
          //         setFocusModel(FocusLevelModel.begginner());
          //         _currentFocusLevelTypeVN.value = FocusLevelType.begginner;
          //       },
          //     );
          //   },
          // ),
          // ValueListenableBuilder<FocusLevelType>(
          //   valueListenable: _currentFocusLevelTypeVN,
          //   builder: (context, value, child) {
          //     return CheckboxListTile(
          //       value: _currentFocusLevelTypeVN.value == FocusLevelType.popular,
          //       title: const Text('Popular'),
          //       subtitle: Text(
          //         FocusLevelModel.popular().toString(),
          //       ),
          //       activeColor: context.primaryColor,
          //       onChanged: (value) {
          //         setFocusModel(FocusLevelModel.popular());
          //         _currentFocusLevelTypeVN.value = FocusLevelType.popular;
          //       },
          //     );
          //   },
          // ),
          // ValueListenableBuilder<FocusLevelType>(
          //   valueListenable: _currentFocusLevelTypeVN,
          //   builder: (context, value, child) {
          //     return CheckboxListTile(
          //       value: _currentFocusLevelTypeVN.value == FocusLevelType.medium,
          //       title: const Text('Medium'),
          //       subtitle: Text(
          //         FocusLevelModel.medium().toString(),
          //       ),
          //       activeColor: context.primaryColor,
          //       onChanged: (value) {
          //         setFocusModel(FocusLevelModel.medium());
          //         _currentFocusLevelTypeVN.value = FocusLevelType.medium;
          //       },
          //     );
          //   },
          // ),
          // ValueListenableBuilder<FocusLevelType>(
          //   valueListenable: _currentFocusLevelTypeVN,
          //   builder: (context, value, child) {
          //     return CheckboxListTile(
          //       value:
          //           _currentFocusLevelTypeVN.value == FocusLevelType.extended,
          //       title: const Text('Extended'),
          //       subtitle: Text(
          //         FocusLevelModel.extended().toString(),
          //       ),
          //       activeColor: context.primaryColor,
          //       onChanged: (value) {
          //         setFocusModel(FocusLevelModel.extended());
          //         _currentFocusLevelTypeVN.value = FocusLevelType.extended;
          //       },
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
