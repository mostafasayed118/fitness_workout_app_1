import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class FoodStepDetailRow extends StatelessWidget {
  final Map sObj;
  final bool isLast;
  const FoodStepDetailRow({super.key, required this.sObj, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                color: AppColor.primaryColor1,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.white, width: 3),
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
            ),
            if (!isLast)
              DottedDashedLine(
                  height: 50,
                  width: 0,
                  dashColor: AppColor.primaryColor1,
                  axis: Axis.vertical)
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Step ${sObj["no"].toString()}",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppStrings.fontFamilyPoppins,
                ),
              ),
              Text(
                sObj["detail"].toString(),
                style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 13,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        )
      ],
    );
  }
}
