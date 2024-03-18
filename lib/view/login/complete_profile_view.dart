import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:flutter/material.dart';

import '../../common_widget/normal_button.dart';
// import '../../common_widget/round_button.dart';
import '../../common_widget/round_textfield.dart';
// import '../main_tab/main_tab_view.dart';
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
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(
                "Let's Complete Your Profile",
                style: TextStyle(
                  color: TColor.primaryColor1,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Khand',
                ),
              ),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(
                  color: TColor.primaryColor2,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Khand',
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Image.asset(
                'assets/img/Profile_com1.png',
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
                        color: TColor.lightGray,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Image.asset(
                              'assets/img/gender.png',
                              width: 20,
                              height: 20,
                              fit: BoxFit.contain,
                              color: TColor.gray,
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
                                              color: TColor.gray,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'Khand',
                                            ),
                                          ),
                                        ))
                                    .toList(),
                                onChanged: (value) {},
                                isExpanded: true,
                                hint: Text(
                                  'Choose Gender',
                                  style: TextStyle(
                                    color: TColor.gray,
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
                      hitText: 'Date of Birth',
                      iconPath: 'assets/img/date.png',
                    ),
                    SizedBox(
                      height: media.width * 0.05,
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: RoundTextfield(
                            hitText: 'Your Weight',
                            iconPath: 'assets/img/weight.png',
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
                              colors: TColor.primaryG1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'KG',
                            style: TextStyle(
                              color: TColor.white,
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
                            hitText: 'Your Height',
                            iconPath: 'assets/img/hight.png',
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
                              colors: TColor.primaryG1,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            'CM',
                            style: TextStyle(
                              color: TColor.white,
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
                      textColor: TColor.white,
                      text: 'Next Step',
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const WhatYourGoalView()));
                      },
                      backgroundColor: TColor.primaryColor1,
                      widthSize: 330,
                      heightSize: 61,
                      borderColor: TColor.primaryColor1,
                      fontSize: 30,
                      // RoundButton(
                      //   title: "Next Step",
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const MainTabView()));
                      //   },
                      //   fontSize: 32,
                      //   fontWeight: FontWeight.w700,
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
