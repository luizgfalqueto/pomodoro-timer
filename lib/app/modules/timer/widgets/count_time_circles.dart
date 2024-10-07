import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/modules/timer/timer_controller.dart';

class CountTimeCircles extends StatelessWidget {
  const CountTimeCircles({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<TimerController>();
    return Observer(
      builder: (context) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: controller.circles.length,
          itemBuilder: (context, index) {
            final circle = controller.circles[index];
            final gradient = circle.completed == false && circle.inCurse == true
                ? SweepGradient(
                    startAngle: pi / 2,
                    endAngle: circle.completed
                        ? 4 * pi
                        : circle.inCurse
                            ? 2.1 * pi
                            : pi,
                    colors: [context.primaryColor, Colors.grey.shade400],
                    stops: const [0.5, 0.5],
                  )
                : null;
            return Transform.rotate(
              angle: 3 * pi / 2,
              child: Container(
                width: 30,
                margin: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  gradient: gradient,
                  color: circle.completed == true
                      ? context.primaryColor
                      : Colors.grey.shade400,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
