import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';
import '../common/common.dart';

class TodayMealRow extends StatelessWidget {
  final Map mObj;
  const TodayMealRow({super.key, required this.mObj});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 2),
          ],
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                mObj["image"].toString(),
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mObj["name"].toString(),
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontFamily: AppStrings.fontFamilyPoppins,
                    ),
                  ),
                  Text(
                    "${getDayTitle(mObj["time"].toString())} | ${getStringDateToOtherFormate(mObj["time"].toString(), outFormatStr: "h:mm aa")}",
                    style: TextStyle(
                      color: AppColor.gray,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                AppAssets.remindersOnIcon,
                width: 30,
                height: 30,
              ),
            )
          ],
        ));
  }
}
