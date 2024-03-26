import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
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
                AppAssets.finishedImage,
                height: media.width * 0.8,
                fit: BoxFit.fitHeight,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.congratulations,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.primaryColor1,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontFamily: AppStrings.fontFamilyPoppins,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.quotation,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.primaryColor4,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                  fontFamily: AppStrings.fontFamilyHind,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "-Jack Lalanne",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColor.primaryColor4,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: AppStrings.fontFamilyHind,
                ),
              ),
              const Spacer(),
              NormalButton(
                  textColor: AppColor.primaryColor1,
                  text: AppStrings.backToHome,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  backgroundColor: AppColor.white,
                  widthSize: 315,
                  heightSize: 60,
                  borderColor: AppColor.primaryColor1,
                  fontSize: 20),
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
