import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';
import 'package:pomodoro_timer/app/modules/settings/settings_controller.dart';

import 'widgets/about_presentation.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<SettingsController>()..initController();
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
              const AboutPresentation(),
              const SizedBox(
                height: 32,
              ),
              Observer(
                builder: (context) => ListTile(
                  title: Text(
                    'Focus level',
                    style: context.normalTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    controller.focusModel.toString(),
                    style: context.normalTextStyle.copyWith(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(0),
                  leading: const Icon(
                    Icons.timelapse_rounded,
                    size: 30,
                    color: Colors.black87,
                  ),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onTap: () => controller.showBottomSheetFocusTimeModel(context),
                ),
              ),
              Observer(
                builder: (context) => ListTile(
                  title: Text(
                    'Auto start',
                    style: context.normalTextStyle.copyWith(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    controller.autoStartModel.toString(),
                    style: context.normalTextStyle.copyWith(
                      color: Colors.grey.shade300,
                    ),
                  ),
                  contentPadding: const EdgeInsets.all(0),
                  leading: const Icon(
                    Icons.refresh,
                    size: 30,
                    color: Colors.black87,
                  ),
                  trailing: const Icon(
                    Icons.chevron_right_rounded,
                    size: 30,
                    color: Colors.black87,
                  ),
                  onTap: () => controller.showBottomSheetAutoStartModel(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
