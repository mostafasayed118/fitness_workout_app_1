// import 'package:fitness/common_widget/round_button.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';
// import 'round_button.dart';

class MealRecommendCell extends StatelessWidget {
  final Map fObj;
  final int index;
  const MealRecommendCell({super.key, required this.index, required this.fObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isEvent = index % 2 == 0;
    return Container(
      margin: const EdgeInsets.all(5),
      width: media.width * 0.5,
      decoration: BoxDecoration(
          color: isEvent
              ? AppColor.primaryColor4.withOpacity(0.3)
              : AppColor.primaryColor7.withOpacity(0.3),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            fObj["image"].toString(),
            width: media.width * 0.3,
            height: media.width * 0.25,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              fObj["name"],
              style: TextStyle(
                color: AppColor.black,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontFamily: AppStrings.fontFamilyPoppins,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "${fObj["size"]} | ${fObj["time"]} | ${fObj["kcal"]}",
              style: TextStyle(
                color: AppColor.gray,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
                width: 90,
                height: 35,
                child: NormalButton(
                  textColor: AppColor.white,
                  text: AppStrings.view,
                  onPressed: () {},
                  backgroundColor:
                      isEvent ? AppColor.primaryColor4 : AppColor.primaryColor1,
                  widthSize: 98,
                  heightSize: 30,
                  borderColor:
                      isEvent ? AppColor.primaryColor4 : AppColor.primaryColor1,
                  fontSize: 13,
                )),
          ),
        ],
      ),
    );
  }
}
