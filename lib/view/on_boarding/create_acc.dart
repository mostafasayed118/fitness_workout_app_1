import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:fitness_workout_app_1/view/login/register_view.dart';
import 'package:fitness_workout_app_1/view/login/login_view.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: media.width * 0.2),
                Image(
                  width: media.width * 0.9,
                  image: const AssetImage(AppAssets.createAccount),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(height: media.width * 0.4),
                      NormalButton(
                        textColor: AppColor.white,
                        text: AppString.createAccount,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpView(),
                            ),
                          );
                        },
                        backgroundColor: AppColor.primaryColor1,
                        widthSize: 330,
                        heightSize: 61,
                        borderColor: AppColor.primaryColor1,
                        fontSize: 30,
                      ),
                      SizedBox(height: media.width * 0.06),
                      NormalButton(
                        textColor: AppColor.primaryColor1,
                        text: AppString.login,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginView(),
                            ),
                          );
                        },
                        backgroundColor: AppColor.white,
                        widthSize: 330,
                        heightSize: 61,
                        borderColor: AppColor.primaryColor1,
                        fontSize: 32,
                      ),
                      SizedBox(height: media.width * 0.08),
                      SizedBox(height: media.width * 0.08),
                      SizedBox(height: media.width * 0.04),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
