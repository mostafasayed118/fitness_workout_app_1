import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
// import 'package:fitness_workout_app_1/common_widget/round_button.dart';
import 'package:fitness_workout_app_1/view/on_boarding/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class StartedView extends StatefulWidget {
  const StartedView({Key? key}) : super(key: key);

  @override
  _StartedViewState createState() => _StartedViewState();
}

class _StartedViewState extends State<StartedView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SizedBox(
          width: media.width,
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(
                  flex: 2,
                ),
                Text(
                  AppStrings.welcomeIn,
                  style: TextStyle(
                    color: AppColor.primaryColor1,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Khand',
                  ),
                ),
                Text(
                  AppStrings.nutrifix,
                  style: TextStyle(
                    color: AppColor.primaryColor1,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Khand',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Image.asset(AppAssets.splashScreen),
                const Spacer(
                  flex: 1,
                ),
                SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      child: Stack(
                        children: [
                          SlideAction(
                            child: NormalButton(
                              textColor: AppColor.white,
                              text: AppStrings.getStarted,
                              onPressed: () {
                                //Go to next screen
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const OnBoardingView(),
                                  ),
                                );
                              },
                              backgroundColor: AppColor.primaryColor1,
                              widthSize: 344,
                              heightSize: 70,
                              borderColor: AppColor.primaryColor1,
                              fontSize: 25,
                            ),

                            onSubmit: () {
                              //Go to next screen
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OnBoardingView()));
                            },

                            sliderRotate: false,

                            borderRadius: 30,
                            elevation: 0,
                            outerColor: AppColor.primaryColor4,
                            innerColor: Colors.white,
                            // innerColor: TColor.primaryColor1,

                            sliderButtonIcon: Image.asset(
                              AppAssets.rightArrowIcon,
                              height: 25,
                            ),
                            // text: 'Get Started',
                            // textColor: Colors.red,
                            // textStyle: const TextStyle(
                            //   fontSize: 24,
                            //   fontFamily: 'Khand',
                            //   fontWeight: FontWeight.bold,
                            // ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )),
    );
  }
}
