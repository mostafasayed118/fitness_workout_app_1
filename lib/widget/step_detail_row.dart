import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class StepDetailRow extends StatelessWidget {
  final Map sObj;
  final bool isLast;
  const StepDetailRow({super.key, required this.sObj, this.isLast = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 25,
          child: Text(
            sObj["no"].toString(),
            style: TextStyle(
              color: AppColor.primaryColor1,
              fontSize: 16,
            ),
          ),
        ),
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
                height: 80,
                width: 0,
                dashColor: AppColor.primaryColor1,
                axis: Axis.vertical,
              ),
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
                sObj["title"].toString(),
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 16,
                  fontFamily: AppStrings.fontFamilyPoppins,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                sObj["detail"].toString(),
                style: TextStyle(
                  color: AppColor.gray,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
