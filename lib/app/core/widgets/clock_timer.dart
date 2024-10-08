import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro_timer/app/core/interfaces/base_timer_controller.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

class ClockTimer<T extends BaseTimerController> extends StatelessWidget {
  final T _controller;
  final Color progressBarColor;
  final Color textTimerColor;
  final Color trackColor;

  const ClockTimer({
    super.key,
    required T controller,
    required this.progressBarColor,
    required this.textTimerColor,
    required this.trackColor,
  }) : _controller = controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Observer(
          builder: (context) {
            return SleekCircularSlider(
              min: 0,
              max: _controller.defaultValue,
              initialValue: _controller.valueTime,
              appearance: CircularSliderAppearance(
                customColors: CustomSliderColors(
                  trackColor: trackColor,
                  progressBarColor: progressBarColor,
                  dotColor: progressBarColor,
                ),
                customWidths: CustomSliderWidths(
                  trackWidth: 6,
                  progressBarWidth: 7,
                  handlerSize: 10,
                ),
                size: 200,
                angleRange: 360,
                startAngle: -90,
              ),
              innerWidget: (double newValue) {
                return Center(
                  child: Text(
                    "${(_controller.valueTime ~/ 60).toInt().toString().padLeft(2, '0')}:${(_controller.valueTime % 60).toInt().toString().padLeft(2, '0')}",
                    style: context.largeTextStyle.copyWith(
                      fontSize: 44,
                      color: textTimerColor
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
