import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

import '../../../core/models/focus_level_model.dart';

class FocusLevelTimeSelect extends StatelessWidget {
  final Function(FocusLevelModel) setFocusModel;
  final FocusLevelType currentLevelType;
  final ValueNotifier<FocusLevelType> _currentFocusLevelTypeVN;

  FocusLevelTimeSelect({
    super.key,
    required this.setFocusModel,
    required this.currentLevelType,
  }) : _currentFocusLevelTypeVN =
            ValueNotifier<FocusLevelType>(currentLevelType);

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
            'Select your focus level',
            style: context.normalTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          ValueListenableBuilder<FocusLevelType>(
            valueListenable: _currentFocusLevelTypeVN,
            builder: (context, value, child) {
              return CheckboxListTile(
                value:
                    _currentFocusLevelTypeVN.value == FocusLevelType.begginner,
                title: const Text('Begginer'),
                subtitle: Text(
                  FocusLevelModel.begginner().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  setFocusModel(FocusLevelModel.begginner());
                  _currentFocusLevelTypeVN.value = FocusLevelType.begginner;
                },
              );
            },
          ),
          ValueListenableBuilder<FocusLevelType>(
            valueListenable: _currentFocusLevelTypeVN,
            builder: (context, value, child) {
              return CheckboxListTile(
                value: _currentFocusLevelTypeVN.value == FocusLevelType.popular,
                title: const Text('Popular'),
                subtitle: Text(
                  FocusLevelModel.popular().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  setFocusModel(FocusLevelModel.popular());
                  _currentFocusLevelTypeVN.value = FocusLevelType.popular;
                },
              );
            },
          ),
          ValueListenableBuilder<FocusLevelType>(
            valueListenable: _currentFocusLevelTypeVN,
            builder: (context, value, child) {
              return CheckboxListTile(
                value: _currentFocusLevelTypeVN.value == FocusLevelType.medium,
                title: const Text('Medium'),
                subtitle: Text(
                  FocusLevelModel.medium().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  setFocusModel(FocusLevelModel.medium());
                  _currentFocusLevelTypeVN.value = FocusLevelType.medium;
                },
              );
            },
          ),
          ValueListenableBuilder<FocusLevelType>(
            valueListenable: _currentFocusLevelTypeVN,
            builder: (context, value, child) {
              return CheckboxListTile(
                value:
                    _currentFocusLevelTypeVN.value == FocusLevelType.extended,
                title: const Text('Extended'),
                subtitle: Text(
                  FocusLevelModel.extended().toString(),
                ),
                activeColor: context.primaryColor,
                onChanged: (value) {
                  setFocusModel(FocusLevelModel.extended());
                  _currentFocusLevelTypeVN.value = FocusLevelType.extended;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
