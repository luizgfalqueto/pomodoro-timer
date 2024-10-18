import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/core/widgets/default_button.dart';
import 'package:pomodoro_timer/app/core/widgets/dialogs.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_controller.dart';
import 'package:pomodoro_timer/app/core/widgets/clock_timer.dart';

import 'widgets/count_time_circles.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<TimerController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () async {
            final registerTime = await Dialogs.showOkCancelDialog(
                context, 'Register your focus time?',);
            if (!registerTime) {
              controller.close();
              Modular.to.pop();
            } else {
              // registrar tempo
            }
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: context.primaryColor,
            size: 32,
          ),
        ),
      ),
      backgroundColor: context.whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
                child: Center(
                  child: CountTimeCircles(),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ClockTimer<TimerController>(
                controller: controller,
                progressBarColor: context.primaryColor,
                textTimerColor: const Color(0xFF5C5C5C),
                trackColor: const Color(0xFFc5c5c5),
              ),
              const SizedBox(
                height: 30,
              ),
              Observer(
                builder: (context) => Text(
                  controller.modeText,
                  style: context.normalTextStyle
                      .copyWith(fontWeight: FontWeight.normal, fontSize: 22,),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Icon(
                Icons.computer,
                size: 40,
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
                    textColor: context.primaryColor,
                    backgroundColor: context.primaryColor,
                    onPressed: () {
                      controller.controllTimer();
                    },
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
