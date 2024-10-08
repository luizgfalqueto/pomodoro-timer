import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

class DefaultButton extends StatelessWidget {
  final IconData icon;
  final String? text;
  final Color? backgroundColor;
  final Function() onPressed;
  final Color? textColor;
  final Color? iconColor;

  const DefaultButton({
    super.key,
    required this.icon,
    this.text,
    this.backgroundColor,
    required this.onPressed,
    this.textColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
          iconSize: 45,
          onPressed: onPressed,
          style: IconButton.styleFrom(
            backgroundColor: backgroundColor ?? context.primaryColor,
          ),
          icon: Icon(
            icon,
            color: iconColor ?? Colors.white,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text ?? '',
          style: context.normalTextStyle.copyWith(
            color: textColor,
          ),
        ),
      ],
    );
  }
}
