import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class LatestActivityRow extends StatelessWidget {
  final Map wObj;
  const LatestActivityRow({super.key, required this.wObj});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                wObj["image"].toString(),
                width: 50,
                height: 50,
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
                  wObj["title"].toString(),
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppStrings.fontFamilyPoppins),
                ),
                Text(
                  wObj["time"].toString(),
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 12,
                    fontFamily: AppStrings.fontFamilyHind,
                  ),
                ),
              ],
            )),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  AppAssets.threeDotsVerticalIcon,
                  width: 12,
                  height: 12,
                  fit: BoxFit.contain,
                ))
          ],
        ));
  }
}
