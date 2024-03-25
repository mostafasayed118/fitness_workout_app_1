import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/on_boarding_page.dart';
import 'package:fitness_workout_app_1/view/on_boarding/create_acc.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int selectPage = 0;

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      selectPage = controller.page?.round() ?? 0;

      setState(() {});
    });
  }

  List pageArea = [
    {
      "title": AppString.onboardingTitleOne,
      "subtitle": AppString.onboardingSubTitleOne,
      "image": AppAssets.onboarding1
    },
    {
      "title": AppString.onboardingTitleTwo,
      "subtitle": AppString.onboardingSubTitleTwo,
      "image": AppAssets.onboarding2
    },
    {
      "title": AppString.onboardingTitleThree,
      "subtitle": AppString.onboardingSubTitleThree,
      "image": AppAssets.onboarding3
    },
    {
      "title": AppString.onboardingTitleFour,
      "subtitle": AppString.onboardingSubTitleFour,
      "image": AppAssets.onboarding4
    },
  ];
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Stack(alignment: Alignment.bottomRight, children: [
        PageView.builder(
          controller: controller,
          itemCount: pageArea.length,
          itemBuilder: (context, index) {
            var pageObject = pageArea[index] as Map? ?? {};

            return OnBoardingPage(pageObject: pageObject);
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                child: Text(
                  AppString.skip,
                  style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CreateAccount()));
                },
              ),
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SizedBox(
                    width: 70,
                    height: 70,
                    child: CircularProgressIndicator(
                      color: AppColor.primaryColor1,
                      value: (selectPage + 1) / 4,
                      strokeWidth: 2,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor1,
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.navigate_next,
                        color: AppColor.white,
                      ),
                      onPressed: () {
                        if (selectPage < 3) {
                          selectPage = selectPage + 1;
                          controller.animateToPage(selectPage,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.fastEaseInToSlowEaseOut);

                          // controller.jumpToPage(selectPage);
                        } else {
                          //open welcome Screen
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CreateAccount()));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
