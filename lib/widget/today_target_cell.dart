import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class TodayTargetCell extends StatelessWidget {
  final String icon;
  final String value;
  final String title;
  const TodayTargetCell(
      {super.key,
      required this.icon,
      required this.value,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            width: 40,
            height: 40,
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: TextStyle(
                    color: AppColor.primaryColor4,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: 'Hind'),
              ),
              Text(
                title,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Hind',
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
