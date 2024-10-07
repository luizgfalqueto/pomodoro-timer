import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_controller.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ClockTimer extends StatelessWidget {
  const ClockTimer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<TimerController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Observer(
          builder: (context) {
            return SleekCircularSlider(
              min: 0,
              max: controller.defaultValue,
              initialValue: controller.valueTime,
              appearance: CircularSliderAppearance(
                customColors: CustomSliderColors(
                  trackColor: Colors.grey.shade400,
                  progressBarColor: context.primaryColor,
                  dotColor: context.primaryColor,
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 5,
                  progressBarWidth: 10,
                  handlerSize: 10,
                ),
                size: 200,
                angleRange: 360,
                startAngle: -90,
              ),
              innerWidget: (double newValue) {
                return Center(
                  child: Text(
                    "${(controller.valueTime ~/ 60).toInt().toString().padLeft(2, '0')}:${(controller.valueTime % 60).toInt().toString().padLeft(2, '0')}",
                    style: context.largeTextStyle.copyWith(
                      fontSize: 44,
                    ),
                  ),
                );
              },
            );
          },
        )
      ],
    );
  }
}
