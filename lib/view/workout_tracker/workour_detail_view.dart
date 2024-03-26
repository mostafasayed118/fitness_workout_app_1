import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../widget/exercises_set_section.dart';
import '../../widget/icon_title_next_row.dart';
import '../../widget/normal_button.dart';
// import '../../common_widget/round_button.dart';
import '../main_tab/select_view.dart';
import 'exercises_stpe_details.dart';
import 'workout_schedule_view.dart';

class WorkoutDetailView extends StatefulWidget {
  final Map dObj;
  const WorkoutDetailView({super.key, required this.dObj});

  @override
  State<WorkoutDetailView> createState() => _WorkoutDetailViewState();
}

class _WorkoutDetailViewState extends State<WorkoutDetailView> {
  List latestArr = [
    {
      "image": "assets/images/Workout1.png",
      "title": "Fullbody Workout",
      "time": "Today, 03:00pm"
    },
    {
      "image": "assets/images/Workout2.png",
      "title": "Upperbody Workout",
      "time": "June 05, 02:00pm"
    },
  ];

  List youArr = [
    {"image": "assets/images/barbell.png", "title": "Barbell"},
    {"image": "assets/images/skipping_rope.png", "title": "Skipping Rope"},
    {"image": "assets/images/bottle.png", "title": "Bottle 1 Liters"},
  ];

  List exercisesArr = [
    {
      "name": "Set 1",
      "set": [
        {
          "image": "assets/images/warm_up.png",
          "title": "Warm Up",
          "value": "05:00"
        },
        {
          "image": "assets/images/jumping_jack.png",
          "title": "Jumping Jack",
          "value": "12x"
        },
        {
          "image": "assets/images/skipping.png",
          "title": "Skipping",
          "value": "15x"
        },
        {
          "image": "assets/images/squats.png",
          "title": "Squats",
          "value": "20x"
        },
        {
          "image": "assets/images/arm_raises.png",
          "title": "Arm Raises",
          "value": "00:53"
        },
        {
          "image": "assets/images/rest_and_drink.png",
          "title": "Rest and Drink",
          "value": "02:00"
        },
      ],
    },
    {
      "name": "Set 2",
      "set": [
        {
          "image": "assets/images/incline_push_ups.png",
          "title": "Incline Push-Ups",
          "value": "12x"
        },
        {
          "image": "assets/images/push_ups.png",
          "title": "Push-Ups",
          "value": "15x"
        },
        {
          "image": "assets/images/skipping.png",
          "title": "Skipping",
          "value": "15x"
        },
        {
          "image": "assets/images/squats.png",
          "title": "Squats",
          "value": "20x"
        },
        {
          "image": "assets/images/cobra_stretch.png",
          "title": "Cobra Stretch",
          "value": "20x"
        },
        {
          "image": "assets/images/rest_and_drink.png",
          "title": "Rest and Drink",
          "value": "03:00"
        },
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: AppColor.primaryG1,
      )),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: TColor.lightGray,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    AppAssets.leftArrowIcon,
                    width: 32,
                    height: 32,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SelectView(),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    height: 40,
                    width: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      // color: TColor.lightGray,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      AppAssets.twoDotsIcon,
                      width: 32,
                      height: 32,
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ],
            ),
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              leadingWidth: 0,
              leading: Container(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  AppAssets.personOne,
                  width: media.width * 0.75,
                  height: media.width * 0.8,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 50,
                        height: 4,
                        decoration: BoxDecoration(
                          color: AppColor.gray.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.dObj["title"].toString(),
                                  style: TextStyle(
                                      color: AppColor.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "${widget.dObj["exercises"].toString()} | ${widget.dObj["time"].toString()} | 320 Calories Burn",
                                  style: TextStyle(
                                      color: AppColor.gray, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              AppAssets.favoriteIcon,
                              width: 18,
                              height: 18,
                              fit: BoxFit.contain,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      IconTitleNextRow(
                          icon: "assets/images/time.png",
                          title: "Schedule Workout",
                          time: "2/17, 09:00 AM",
                          color: AppColor.primaryColor4.withOpacity(0.3),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const WorkoutScheduleView(),
                              ),
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.03,
                      ),
                      IconTitleNextRow(
                          icon: "assets/images/difficulity.png",
                          title: "Difficulity",
                          time: "Beginner",
                          color: AppColor.primaryColor1.withOpacity(0.3),
                          onPressed: () {}),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "You'll Need",
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Khand',
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} Items",
                              style: TextStyle(
                                color: AppColor.gray,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.5,
                        child: ListView.builder(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: youArr.length,
                            itemBuilder: (context, index) {
                              var yObj = youArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.all(8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: media.width * 0.35,
                                        width: media.width * 0.35,
                                        decoration: BoxDecoration(
                                          color:
                                              AppColor.gray.withOpacity(0.05),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          yObj["image"].toString(),
                                          width: media.width * 0.2,
                                          height: media.width * 0.2,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          yObj["title"].toString(),
                                          style: TextStyle(
                                            color: AppColor.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      )
                                    ],
                                  ));
                            }),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exercises",
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'Khand',
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "${youArr.length} Sets",
                              style: TextStyle(
                                color: AppColor.gray,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        ],
                      ),
                      ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: exercisesArr.length,
                          itemBuilder: (context, index) {
                            var sObj = exercisesArr[index] as Map? ?? {};
                            return ExercisesSetSection(
                              sObj: sObj,
                              onPressed: (obj) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ExercisesStepDetails(
                                      eObj: obj,
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                      SizedBox(
                        height: media.width * 0.1,
                      ),
                    ],
                  ),
                ),
                SafeArea(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: NormalButton(
                          textColor: AppColor.primaryColor1,
                          text: 'Start Workout',
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => const LoginView()));
                          },
                          backgroundColor: AppColor.white,
                          widthSize: 200,
                          heightSize: 50,
                          borderColor: AppColor.primaryColor1,
                          fontSize: 20,
                        ),
                      ),
                      // RoundButton(
                      //   title: "Start Workout",
                      //   onPressed: () {},
                      //   elevation: 0,
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w700,
                      // )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
