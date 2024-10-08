import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/core/ui/icons/pomodoro_timer_icons.dart';
import 'package:pomodoro_timer/app/core/widgets/default_button.dart';
import 'package:pomodoro_timer/app/core/widgets/dialogs.dart';
import 'package:pomodoro_timer/app/modules/rest_timer/rest_time_controller.dart';
import 'package:pomodoro_timer/app/core/widgets/clock_timer.dart';

class RestTimerPage extends StatelessWidget {
  const RestTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<RestTimeController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () async {
            final toSkipRest = await Dialogs.showOkCancelDialog(
                context, 'Really skip rest time?');
            if (toSkipRest) {
              controller.close();
              Modular.to.pop();
            }
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: context.whiteColor,
            size: 32,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              ClockTimer<RestTimeController>(
                controller: controller,
                progressBarColor: context.whiteColor,
                textTimerColor: context.whiteColor,
                trackColor: Colors.grey.shade600,
              ),
              const SizedBox(
                height: 30,
              ),
              Observer(
                builder: (context) => Text(
                  controller.modeText,
                  style: context.normalTextStyle.copyWith(
                      fontWeight: FontWeight.normal,
                      fontSize: 22,
                      color: context.whiteColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Icon(
                PomodoroTimer.leaf,
                size: 40,
                color: context.whiteColor,
              ),
              const SizedBox(
                height: 50,
              ),
              Observer(
                builder: (context) {
                  return DefaultButton(
                    icon: controller.isStarted == false
                        ? Icons.play_arrow_rounded
                        : Icons.pause_outlined,
                    text: controller.buttonText,
                    textColor: context.whiteColor,
                    backgroundColor: context.whiteColor,
                    onPressed: () {
                      controller.controllTimer();
                    },
                    iconColor: context.primaryColor,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
