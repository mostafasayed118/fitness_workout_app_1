import 'package:flutter/material.dart';

import '../common/colo_extension.dart';

class NotificationRow extends StatelessWidget {
  final Map nObj;
  const NotificationRow({super.key, required this.nObj});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              nObj["image"].toString(),
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
                nObj["title"].toString(),
                style: TextStyle(
                    color: AppColor.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: 'Hind'),
              ),
              Text(
                nObj["time"].toString(),
                style: TextStyle(
                  color: AppColor.gray,
                  fontSize: 12,
                  fontFamily: 'Hind',
                ),
              ),
            ],
          )),
          IconButton(
              onPressed: () {
                //Function more option will be here
              },
              icon: Image.asset(
                "assets/img/sub_menu.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ))
        ],
      ),
    );
  }
}
