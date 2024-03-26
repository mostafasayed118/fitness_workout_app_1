import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../../widget/normal_button.dart';
import '../../widget/round_textfield.dart';
import 'what_your_goal_view.dart';

class CompleteProfileView extends StatefulWidget {
  const CompleteProfileView({Key? key}) : super(key: key);

  @override
  _CompleteProfileViewState createState() => _CompleteProfileViewState();
}

class _CompleteProfileViewState extends State<CompleteProfileView> {
  TextEditingController textDate = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Text(
                  AppString.completeProfileTitle,
                  style: TextStyle(
                    color: AppColor.primaryColor1,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Poppins',
                  ),
                ),
                Text(
                  AppString.completeProfileSubTitle,
                  style: TextStyle(
                    color: AppColor.primaryColor2,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Image.asset(
                  AppAssets.completeProfile,
                  width: media.width,
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.lightGray,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 50,
                              height: 50,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Image.asset(
                                AppAssets.genderIcon,
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                                color: AppColor.primaryColor4,
                              ),
                            ),
                            Expanded(
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton(
                                  items: ["Male", 'Female']
                                      .map((name) => DropdownMenuItem(
                                            value: name,
                                            child: Text(
                                              name,
                                              style: TextStyle(
                                                color: AppColor.gray,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: 'Poppins',
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  onChanged: (value) {},
                                  isExpanded: true,
                                  hint: Text(
                                    AppString.chooseGenderHint,
                                    style: TextStyle(
                                      color: AppColor.primaryColor1,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Hind',
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      const RoundTextfield(
                        hitText: AppString.dateOfBirthHint,
                        iconPath: AppAssets.dateIcon,
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: RoundTextfield(
                              hitText: AppString.weightHint,
                              iconPath: AppAssets.weightIcon,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: AppColor.primaryG1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              AppString.kg,
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12,
                                fontFamily: 'Hind',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        children: [
                          const Expanded(
                            child: RoundTextfield(
                              hitText: AppString.heightHint,
                              iconPath: AppAssets.heightIcon,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: AppColor.primaryG1,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Text(
                              AppString.cm,
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12,
                                fontFamily: 'Hind',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.07,
                      ),
                      NormalButton(
                        textColor: AppColor.white,
                        text: AppString.next,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WhatYourGoalView(),
                            ),
                          );
                        },
                        backgroundColor: AppColor.primaryColor1,
                        widthSize: 330,
                        heightSize: 61,
                        borderColor: AppColor.primaryColor1,
                        fontSize: 30,
                      ),
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
