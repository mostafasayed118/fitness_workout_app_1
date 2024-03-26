import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widget/normal_button.dart';
import '../main_tab/main_tab_view.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                Text(
                  AppStrings.titleWelcome,
                  style: TextStyle(
                    color: AppColor.primaryColor1,
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 20),
                Lottie.asset(
                  AppAssets.animationWelcome,
                  width: 225,
                  height: 290,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 10),
                Text(
                  "${AppStrings.welcome}, Mustafa", // user name fetch from Api
                  style: TextStyle(
                    color: AppColor.primaryColor2,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  AppStrings.subWelcome,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColor.primaryColor1,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 20),
                NormalButton(
                  textColor: AppColor.white,
                  text: AppStrings.goToHome,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainTabView(),
                      ),
                    );
                  },
                  backgroundColor: AppColor.primaryColor1,
                  widthSize: 330,
                  heightSize: 61,
                  borderColor: AppColor.primaryColor1,
                  fontSize: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
