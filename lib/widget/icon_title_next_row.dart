import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class IconTitleNextRow extends StatelessWidget {
  final String icon;
  final String title;
  final String time;
  final VoidCallback onPressed;
  final Color color;
  const IconTitleNextRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.time,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Image.asset(
                icon,
                width: 18,
                height: 18,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.gray,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppStrings.fontFamilyHind,
                ),
              ),
            ),
            SizedBox(
              width: 120,
              child: Text(
                time,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: AppColor.gray,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppStrings.fontFamilyHind,
                ),
              ),
            ),
            const SizedBox(width: 8),
            SizedBox(
              width: 25,
              height: 25,
              child: Container(
                width: 25,
                height: 25,
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.rightArrowBlackIcon,
                  width: 12,
                  height: 12,
                  fit: BoxFit.contain,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
