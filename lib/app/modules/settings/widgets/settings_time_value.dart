import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

class SettingsTimeValue extends StatelessWidget {
  final String text;
  final String value;
  final Function() action;

  const SettingsTimeValue({
    super.key,
    required this.text,
    required this.value,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(text, style: context.normalTextStyle.copyWith(fontSize: 22)),
        InkWell(
          onTap: action,
          child: Row(
            children: [
              Text(
                value,
                style: context.normalTextStyle.copyWith(fontSize: 22, color: context.whiteColor),
              ),
              const SizedBox(
                width: 5,
              ),
              Icon(
                Icons.edit,
                size: 20,
                color: context.whiteColor,
              )
            ],
          ),
        ),
      ],
    );
  }
}