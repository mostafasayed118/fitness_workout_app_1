// import 'package:fitness/common_widget/round_button.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class MealCategoryCell extends StatelessWidget {
  final Map cObj;
  final int index;
  const MealCategoryCell({super.key, required this.index, required this.cObj});

  @override
  Widget build(BuildContext context) {
    bool isEvent = index % 2 == 0;
    return Container(
      margin: const EdgeInsets.all(4),
      width: 80,
      decoration: BoxDecoration(
          color: isEvent
              ? AppColor.primaryColor4.withOpacity(0.3)
              : AppColor.primaryColor7.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(17.5),
            child: Container(
              decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.circular(17.5)),
              child: Image.asset(
                cObj["image"].toString(),
                width: 35,
                height: 35,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Text(
              cObj["name"],
              maxLines: 1,
              style: TextStyle(
                color: AppColor.black,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
