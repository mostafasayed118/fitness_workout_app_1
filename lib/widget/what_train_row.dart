import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import '../common/colo_extension.dart';
// import '../view/home/activity_tracker_view.dart';
import 'normal_button.dart';
// import 'round_button.dart';

class WhatTrainRow extends StatelessWidget {
  final Map wObj;
  const WhatTrainRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          decoration: BoxDecoration(
            color: AppColor.primaryColor4.withOpacity(0.3),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      wObj["title"].toString(),
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppStrings.fontFamilyPoppins,
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "${wObj["exercises"].toString()} | ${wObj["time"].toString()}",
                      style: TextStyle(
                        color: AppColor.gray.withOpacity(0.8),
                        fontSize: 13,
                        fontFamily: AppStrings.fontFamilyHind,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 95,
                        height: 35,
                        child: NormalButton(
                          textColor: AppColor.primaryColor1,
                          text: AppStrings.viewMore,
                          onPressed: () {},
                          backgroundColor: AppColor.white,
                          widthSize: 90,
                          heightSize: 35,
                          borderColor: AppColor.primaryColor1,
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                        ))
                  ],
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.54),
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      wObj["image"].toString(),
                      width: 90,
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
