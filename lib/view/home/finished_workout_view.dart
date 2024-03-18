import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class FinishedWorkoutView extends StatefulWidget {
  const FinishedWorkoutView({super.key});

  @override
  State<FinishedWorkoutView> createState() => _FinishedWorkoutViewState();
}

class _FinishedWorkoutViewState extends State<FinishedWorkoutView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/img/Frame_finished.png",
                height: media.width * 0.8,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Congratulations, You Have Finished Your Workout",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryColor1,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Khand',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Exercises is king and nutrition is queen. Combine the two and you will have a kingdom",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryColor4,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  fontFamily: 'Hind',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "-Jack Lalanne",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryColor4,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Hind',
                ),
              ),
              const Spacer(),
              NormalButton(
                  textColor: TColor.primaryColor1,
                  text: 'Back To Home',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: TColor.white,
                  widthSize: 315,
                  heightSize: 60,
                  borderColor: TColor.primaryColor1,
                  fontSize: 20),
              // RoundButton(
              //     title: "Back To Home",
              //     onPressed:
              // () {
              //       Navigator.pop(context);
              //     }),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
