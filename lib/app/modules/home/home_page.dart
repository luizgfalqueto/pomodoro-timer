import 'package:flutter/material.dart';
import 'package:pomodoro_timer/app/core/ui/extensions/theme_extension.dart';

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
                  style: context.largeTextStyle,
                ),
                const SizedBox(
                  height: 32,
                ),
                IconButton(
                  iconSize: 80,
                  onPressed: () {},
                  style: IconButton.styleFrom(
                      backgroundColor: context.primaryColorDark),
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
