import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/core/ui/icons/pomodoro_timer_icons.dart';
import 'package:pomodoro_timer/app/modules/settings/settings_controller.dart';

import 'widgets/settings_time_value.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<SettingsController>();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Settings',
          style: TextStyle(color: context.whiteColor),
        ),
        leading: IconButton(
          onPressed: () => Modular.to.pop(),
          icon: Icon(
            Icons.arrow_back_sharp,
            size: 30,
            color: context.whiteColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: const Center(
                      child: Text('Logo'),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Pomodoro Timer',
                style: context.normalTextStyle.copyWith(
                  fontSize: 26,
                  color: context.whiteColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Container(
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
              ),
              const SizedBox(
                height: 32,
              ),
              SettingsTimeValue(
                text: 'Focus Time',
                value: controller.textValueTime,
                action: () {},
              ),
              const SizedBox(
                 height: 16,
              ),
              SettingsTimeValue(
                text: 'Rest Time',
                value: '5m 0s',
                action: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
