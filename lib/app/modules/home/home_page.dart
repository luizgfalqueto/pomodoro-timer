import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

import '../../core/widgets/default_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s start \n log your time',
                  textAlign: TextAlign.center,
                  style: context.largeTextStyle.copyWith(
                    color: context.whiteColor,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                DefaultButton(
                  icon: Icons.play_arrow_rounded,
                  backgroundColor: context.primaryColorLight,
                  text: 'Let`s go!',
                  textColor: context.whiteColor,
                  onPressed: () => Modular.to.pushNamed('/timer/'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
