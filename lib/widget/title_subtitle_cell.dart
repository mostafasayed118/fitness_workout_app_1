import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class TitleSubtitleCell extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleSubtitleCell(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 2),
        ],
      ),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: AppColor.primaryColor4,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: AppStrings.fontFamilyHind),
          ),
          Text(
            subtitle,
            style: TextStyle(
              color: AppColor.gray,
              fontSize: 12,
              fontFamily: AppStrings.fontFamilyHind,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
