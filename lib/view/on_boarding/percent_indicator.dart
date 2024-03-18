import 'package:fitness_workout_app_1/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Looding extends StatefulWidget {
  const Looding({super.key});

  @override
  State<Looding> createState() => _LoodingState();
}

class _LoodingState extends State<Looding> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 7)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const StartedView()));
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isCheck == false) {
              isCheck = true;
              _controller.forward();
            } else {
              isCheck = false;
              _controller.reverse();
            }
          },
          child: Lottie.asset(
            'assets/animation/animation_onboarding.json',
            controller: _controller,
          ),
        ),
      ),
    );
  }
}
