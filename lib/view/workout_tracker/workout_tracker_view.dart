// import 'package:fitness/common/colo_extension.dart';
// import 'package:fitness/view/workout_tracker/workour_detail_view.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../widget/normal_button.dart';
// import '../../common_widget/round_button.dart';
import '../../widget/upcoming_workout_row.dart';
import '../../widget/what_train_row.dart';
import '../home/activity_tracker_view.dart';
import '../main_tab/select_view.dart';
import 'workour_detail_view.dart';

class WorkoutTrackerView extends StatefulWidget {
  const WorkoutTrackerView({super.key});

  @override
  State<WorkoutTrackerView> createState() => _WorkoutTrackerViewState();
}

class _WorkoutTrackerViewState extends State<WorkoutTrackerView> {
  List latestArr = [
    {
      "image": "assets/images/Workout_Pic.png",
      "title": "Fullbody Workout",
      "time": "Today, 03:00pm"
    },
    {
      "image": "assets/images/Workout_Pic_1.png",
      "title": "Upperbody Workout",
      "time": "June 05, 02:00pm"
    },
  ];

  List whatArr = [
    {
      "image": "assets/images/Ellipse.png",
      "title": "Fullbody Workout",
      "exercises": "11 Exercises",
      "time": "32mins"
    },
    {
      "image": "assets/images/lowebody_workout_1.png",
      "title": "Lowebody Workout",
      "exercises": "12 Exercises",
      "time": "40mins"
    },
    {
      "image": "assets/images/Group_10293.png",
      "title": "AB Workout",
      "exercises": "14 Exercises",
      "time": "20mins"
    }
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: AppColor.primaryG1,
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              centerTitle: true,
              elevation: 0,
              // pinned: true,
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
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    AppAssets.leftArrowIcon,
                    width: 30,
                    height: 30,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              title: Text(
                AppStrings.workoutTracker,
                style: TextStyle(
                    color: AppColor.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppStrings.fontFamilyPoppins),
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
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      AppAssets.twoDotsIcon,
                      width: 30,
                      height: 30,
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
              leading: const SizedBox(),
              expandedHeight: media.width * 0.5,
              flexibleSpace: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: media.width * 0.5,
                width: double.maxFinite,
                child: LineChart(
                  LineChartData(
                    lineTouchData: LineTouchData(
                      enabled: true,
                      handleBuiltInTouches: false,
                      touchCallback:
                          (FlTouchEvent event, LineTouchResponse? response) {
                        if (response == null || response.lineBarSpots == null) {
                          return;
                        }
                        // if (event is FlTapUpEvent) {
                        //   final spotIndex =
                        //       response.lineBarSpots!.first.spotIndex;
                        //   showingTooltipOnSpots.clear();
                        //   setState(() {
                        //     showingTooltipOnSpots.add(spotIndex);
                        //   });
                        // }
                      },
                      mouseCursorResolver:
                          (FlTouchEvent event, LineTouchResponse? response) {
                        if (response == null || response.lineBarSpots == null) {
                          return SystemMouseCursors.basic;
                        }
                        return SystemMouseCursors.click;
                      },
                      getTouchedSpotIndicator:
                          (LineChartBarData barData, List<int> spotIndexes) {
                        return spotIndexes.map((index) {
                          return TouchedSpotIndicatorData(
                            const FlLine(
                              color: Colors.transparent,
                            ),
                            FlDotData(
                              show: true,
                              getDotPainter: (spot, percent, barData, index) =>
                                  FlDotCirclePainter(
                                radius: 3,
                                color: Colors.white,
                                strokeWidth: 3,
                                strokeColor: AppColor.secondaryColor1,
                              ),
                            ),
                          );
                        }).toList();
                      },
                      touchTooltipData: LineTouchTooltipData(
                        tooltipBgColor: AppColor.secondaryColor1,
                        tooltipRoundedRadius: 20,
                        getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                          return lineBarsSpot.map((lineBarSpot) {
                            return LineTooltipItem(
                              "${lineBarSpot.x.toInt()} mins ago",
                              const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            );
                          }).toList();
                        },
                      ),
                    ),
                    lineBarsData: lineBarsData1,
                    minY: -0.5,
                    maxY: 110,
                    titlesData: FlTitlesData(
                        show: true,
                        leftTitles: const AxisTitles(),
                        topTitles: const AxisTitles(),
                        bottomTitles: AxisTitles(
                          sideTitles: bottomTitles,
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: rightTitles,
                        )),
                    gridData: FlGridData(
                      show: true,
                      drawHorizontalLine: true,
                      horizontalInterval: 25,
                      drawVerticalLine: false,
                      getDrawingHorizontalLine: (value) {
                        return FlLine(
                          color: AppColor.white.withOpacity(0.15),
                          strokeWidth: 2,
                        );
                      },
                    ),
                    borderData: FlBorderData(
                      show: true,
                      border: Border.all(
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ];
        },
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
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
                        borderRadius: BorderRadius.circular(3)),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor4.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.daily,
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              fontFamily: AppStrings.fontFamilyHind),
                        ),
                        SizedBox(
                            width: 75,
                            height: 30,
                            child: NormalButton(
                              textColor: AppColor.primaryColor1,
                              text: AppStrings.check,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ActivityTrackerView()));
                              },
                              backgroundColor: AppColor.white,
                              widthSize: 72,
                              heightSize: 32,
                              borderColor: AppColor.primaryColor1,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.upcomingWorkout,
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppStrings.fontFamilyPoppins,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.seeMore,
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: AppStrings.fontFamilyHind,
                          ),
                        ),
                      )
                    ],
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: latestArr.length,
                      itemBuilder: (context, index) {
                        var wObj = latestArr[index] as Map? ?? {};
                        return UpcomingWorkoutRow(wObj: wObj);
                      }),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppStrings.whatDoYouWant,
                        style: TextStyle(
                          color: AppColor.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          fontFamily: AppStrings.fontFamilyPoppins,
                        ),
                      ),
                    ],
                  ),
                  ListView.builder(
                      padding: EdgeInsets.zero,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: whatArr.length,
                      itemBuilder: (context, index) {
                        var wObj = whatArr[index] as Map? ?? {};
                        return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => WorkoutDetailView(
                                    dObj: wObj,
                                  ),
                                ),
                              );
                            },
                            child: WhatTrainRow(wObj: wObj));
                      }),
                  SizedBox(
                    height: media.width * 0.1,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  LineTouchData get lineTouchData1 => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
        ),
      );

  List<LineChartBarData> get lineBarsData1 => [
        lineChartBarData1_1,
        lineChartBarData1_2,
      ];

  LineChartBarData get lineChartBarData1_1 => LineChartBarData(
        isCurved: true,
        color: AppColor.white,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(show: false),
        spots: const [
          FlSpot(1, 35),
          FlSpot(2, 70),
          FlSpot(3, 40),
          FlSpot(4, 80),
          FlSpot(5, 25),
          FlSpot(6, 70),
          FlSpot(7, 35),
        ],
      );

  LineChartBarData get lineChartBarData1_2 => LineChartBarData(
        isCurved: true,
        color: AppColor.white.withOpacity(0.5),
        barWidth: 2,
        isStrokeCapRound: true,
        dotData: const FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
        ),
        spots: const [
          FlSpot(1, 80),
          FlSpot(2, 50),
          FlSpot(3, 90),
          FlSpot(4, 40),
          FlSpot(5, 80),
          FlSpot(6, 35),
          FlSpot(7, 60),
        ],
      );

  SideTitles get rightTitles => SideTitles(
        getTitlesWidget: rightTitleWidgets,
        showTitles: true,
        interval: 20,
        reservedSize: 40,
      );

  Widget rightTitleWidgets(double value, TitleMeta meta) {
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0%';
        break;
      case 20:
        text = '20%';
        break;
      case 40:
        text = '40%';
        break;
      case 60:
        text = '60%';
        break;
      case 80:
        text = '80%';
        break;
      case 100:
        text = '100%';
        break;
      default:
        return Container();
    }

    return Text(text,
        style: TextStyle(
          color: AppColor.white,
          fontSize: 12,
          fontFamily: AppStrings.fontFamilyHind,
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center);
  }

  SideTitles get bottomTitles => SideTitles(
        showTitles: true,
        reservedSize: 32,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );

  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      color: AppColor.white,
      fontSize: 12,
      fontFamily: AppStrings.fontFamilyHind,
      fontWeight: FontWeight.w500,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text(AppStrings.sunday, style: style);
        break;
      case 2:
        text = Text(AppStrings.monday, style: style);
        break;
      case 3:
        text = Text(AppStrings.tuesday, style: style);
        break;
      case 4:
        text = Text(AppStrings.wednesday, style: style);
        break;
      case 5:
        text = Text(AppStrings.thursday, style: style);
        break;
      case 6:
        text = Text(AppStrings.friday, style: style);
        break;
      case 7:
        text = Text(AppStrings.saturday, style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 10,
      child: text,
    );
  }
}
