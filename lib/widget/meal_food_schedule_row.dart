// import 'package:fitness/common/colo_extension.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class MealFoodScheduleRow extends StatelessWidget {
  final Map mObj;
  final int index;
  const MealFoodScheduleRow(
      {super.key, required this.mObj, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                  color: index % 2 == 0
                      ? AppColor.primaryColor4.withOpacity(0.16)
                      : AppColor.primaryColor8.withOpacity(0.25),
                  borderRadius: BorderRadius.circular(10)),
              alignment: Alignment.center,
              child: Image.asset(
                mObj["image"].toString(),
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
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
                    fontFamily: 'Khand',
                  ),
                ),
                Text(
                  mObj["time"].toString(),
                  style: TextStyle(
                    color: AppColor.gray,
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/img/Icon_Next.png",
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
