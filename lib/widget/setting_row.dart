import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class SettingRow extends StatelessWidget {
  final String icon;
  final String title;
  final VoidCallback onPressed;
  const SettingRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: 30,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 15,
              width: 15,
              fit: BoxFit.contain,
            ),
            const SizedBox(
              width: 15,
            ),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 12,
                  fontFamily: 'Hind',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Image.asset(
              "assets/img/Icon_Arrow.png",
              height: 18,
              width: 18,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
