import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:fitness_workout_app_1/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';

class Splash1 extends StatelessWidget {
  const Splash1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset('assets/img/logo.png'),
          const SizedBox(
            height: 20,
          ),
          // Text('NutriFix', style: TextStyle()),
        ]),
      ),
      nextScreen: OnBoardingView(),
      splashIconSize: 500,
      duration: 3000,
      splashTransition: SplashTransition.slideTransition,
      backgroundColor: Color(0xff0a5a6a),
    );
  }
}
