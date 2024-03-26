import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

import '../../widget/normal_button.dart';

class WhatYourGoalView extends StatelessWidget {
  WhatYourGoalView({Key? key}) : super(key: key);

  final List<Map<String, String>> goalArray = [
    {
      'image': AppAssets.whatYourGoalImageOne,
      'title': AppStrings.whatYourGoalTitleOne,
      'subtitle': AppStrings.whatYourGoalSubTitleOne,
    },
    {
      'image': AppAssets.whatYourGoalImageTwo,
      'title': AppStrings.whatYourGoalTitleTwo,
      'subtitle': AppStrings.whatYourGoalSubTitleTwo,
    },
    {
      'image': AppAssets.whatYourGoalImageThree,
      'title': AppStrings.whatYourGoalTitleThree,
      'subtitle': AppStrings.whatYourGoalSubTitleThree,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArray
                    .map(
                      (goalObject) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: AppColor.primaryG1,
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: media.width * 0.1,
                          horizontal: 25,
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                goalObject['image']!,
                                width: media.width * 0.5,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(
                                height: media.width * 0.05,
                              ),
                              Text(
                                goalObject['title']!,
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Hind',
                                ),
                              ),
                              Container(
                                width: media.width * 0.1,
                                height: 1,
                                color: AppColor.white,
                              ),
                              SizedBox(
                                height: media.width * 0.03,
                              ),
                              Text(
                                goalObject['subtitle']!,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Hind',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: CarouselController(),
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  Text(
                    AppStrings.whatYourGoal,
                    style: TextStyle(
                      color: AppColor.primaryColor1,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    AppStrings.whatYourGoalSub,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColor.primaryColor2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Hind',
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  NormalButton(
                    textColor: AppColor.white,
                    text: AppStrings.confirm,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const WelcomeView(),
                        ),
                      );
                    },
                    backgroundColor: AppColor.primaryColor1,
                    widthSize: 330,
                    heightSize: 61,
                    borderColor: AppColor.primaryColor1,
                    fontSize: 32,
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
