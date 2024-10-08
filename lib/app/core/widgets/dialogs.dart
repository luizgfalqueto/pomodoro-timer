import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

class Dialogs {
  Dialogs._();

  static Future<bool> showOkCancelDialog(
      BuildContext context, String messageTitle) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            messageTitle,
            style: context.normalTextStyle.copyWith(fontSize: 20),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Modular.to.pop(false);
              },
              child: Text(
                'No',
                style: context.normalTextStyle.copyWith(
                  fontSize: 20,
                  color: Colors.red.shade300,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Modular.to.pop(true);
              },
              child: Text(
                'Yes',
                style: context.normalTextStyle.copyWith(
                  fontSize: 20,
                  color: Colors.green.shade500,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
