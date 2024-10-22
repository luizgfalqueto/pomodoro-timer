import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

import '../../../core/ui/icons/pomodoro_timer_icons.dart';

class AboutPresentation extends StatelessWidget {
  const AboutPresentation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 90,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: context.primaryColorLight,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Designed and developed By',
                style: context.normalTextStyle.copyWith(fontSize: 18),
              ),
              Text(
                'Luiz Gustavo Falqueto',
                style: context.normalTextStyle.copyWith(
                  fontSize: 18,
                  color: context.whiteColor,
                ),
              )
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(PomodoroTimer.github),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(PomodoroTimer.linkedin),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}