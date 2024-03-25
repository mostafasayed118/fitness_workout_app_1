import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/view/on_boarding/on_boarding_view.dart';
import 'package:fitness_workout_app_1/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(AppAssets.logo),
          const SizedBox(
            height: 20,
          ),
          // Text('NutriFix', style: TextStyle()),
        ]),
      ),
      nextScreen: const StartedView(),
      splashIconSize: 500,
      duration: 3000,
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: const Color(0xff0a5a6a),
    );
  }
}
