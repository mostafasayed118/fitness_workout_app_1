import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:flutter/material.dart';

import '../common/colo_extension.dart';
// import 'round_button.dart';

class FindEatCell extends StatelessWidget {
  final Map fObj;
  final int index;
  const FindEatCell({super.key, required this.index, required this.fObj});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool isEvent = index % 2 == 0;
    return Container(
      margin: const EdgeInsets.all(8),
      width: media.width * 0.5,
      decoration: BoxDecoration(
        color: isEvent
            ? TColor.primaryColor4.withOpacity(0.3)
            : TColor.primaryColor7.withOpacity(0.3),
        // gradient: LinearGradient(
        //   colors: isEvent
        //       ? [
        //           TColor.primaryColor4.withOpacity(0.5),
        //           TColor.primaryColor1.withOpacity(0.5)
        //         ]
        //       : [
        //           TColor.secondaryColor2.withOpacity(0.5),
        //           TColor.secondaryColor1.withOpacity(0.5)
        //         ],
        // ),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(75),
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                fObj["image"].toString(),
                width: media.width * 0.3,
                height: media.width * 0.25,
                fit: BoxFit.contain,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              fObj["name"],
              style: TextStyle(
                color: TColor.black,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              fObj["number"],
              style: TextStyle(color: TColor.gray, fontSize: 12),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
                width: 100,
                height: 35,
                child: NormalButton(
                  textColor: TColor.white,
                  text: 'Select',
                  onPressed: () {},
                  backgroundColor:
                      isEvent ? TColor.primaryColor4 : TColor.primaryColor1,
                  widthSize: 98,
                  heightSize: 30,
                  borderColor:
                      isEvent ? TColor.primaryColor4 : TColor.primaryColor1,
                  fontSize: 13,
                )
                // RoundButton(
                //   fontSize: 12,
                //   type: isEvent
                //       ? RoundButtonType.bgGradient
                //       : RoundButtonType.bgGradient,
                //   title: "Select",
                //   onPressed: () {},
                //   fontWeight: FontWeight.w500,
                //   elevation: 0,
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
