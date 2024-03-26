import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../widget/latest_activity_row.dart';
import '../../widget/today_target_cell.dart';
import '../main_tab/main_tab_view.dart';
import '../main_tab/select_view.dart';

class ActivityTrackerView extends StatefulWidget {
  const ActivityTrackerView({super.key});

  @override
  State<ActivityTrackerView> createState() => _ActivityTrackerViewState();
}

class _ActivityTrackerViewState extends State<ActivityTrackerView> {
  int touchedIndex = -1;

  List latestArr = [
    {
      "image": "assets/images/latest_workout_2.png",
      "title": "Drinking 300ml Water",
      "time": "About 1 minutes ago"
    },
    {
      "image": "assets/images/latest_workout_1.png",
      "title": "Eat Snack (Fitbar)",
      "time": "About 10 minutes ago"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MainTabView();
            }));
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              AppAssets.leftArrowIcon,
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          AppStrings.activityTracker,
          style: TextStyle(
            color: AppColor.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: AppStrings.fontFamilyHind,
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
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 25),
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor4.withOpacity(0.3),
                  // gradient: LinearGradient(colors: [
                  //   TColor.primaryColor2.withOpacity(0.3),
                  //   TColor.primaryColor1.withOpacity(0.3)
                  // ]),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.todayTarget,
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: AppStrings.fontFamilyHind,
                          ),
                        ),
                        SizedBox(
                          width: 30,
                          height: 30,
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.primaryColor1,
                              // gradient: LinearGradient(
                              //   colors: TColor.primaryG1,
                              // ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: MaterialButton(
                                onPressed: () {
                                  //Function to Add today target here
                                },
                                padding: EdgeInsets.zero,
                                height: 30,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25)),
                                textColor: AppColor.primaryColor1,
                                minWidth: double.maxFinite,
                                elevation: 0,
                                color: Colors.transparent,
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 20,
                                )),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Expanded(
                          child: TodayTargetCell(
                            icon: AppAssets.glassIcon,
                            value:
                                "8L", // this value should be dynamic based on user data in future
                            title: AppStrings.waterIntake,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: TodayTargetCell(
                            icon: AppAssets.footIcon,
                            value:
                                "2400", // this value should be dynamic based on user data in future
                            title: AppStrings.footSteps,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.activityProgress,
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: AppStrings.fontFamilyPoppins,
                    ),
                  ),
                  Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        color: AppColor.white,
                        // gradient: LinearGradient(colors: TColor.primaryG1),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: AppColor.primaryColor1),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton(
                          items: [AppStrings.weekly, AppStrings.monthly]
                              .map((name) => DropdownMenuItem(
                                    value: name,
                                    child: Text(
                                      name,
                                      style: TextStyle(
                                          color: AppColor.gray,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily:
                                              AppStrings.fontFamilyHind),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (value) {},
                          icon: Icon(Icons.expand_more,
                              color: AppColor.primaryColor1),
                          hint: Text(
                            AppStrings.weekly,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: AppColor.primaryColor1,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontFamily: AppStrings.fontFamilyHind,
                            ),
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Container(
                height: media.width * 0.5,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 3)
                    ]),
                child: BarChart(BarChartData(
                  barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                      tooltipBgColor: Colors.grey,
                      tooltipHorizontalAlignment: FLHorizontalAlignment.right,
                      tooltipMargin: 10,
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        String weekDay;
                        switch (group.x) {
                          case 0:
                            weekDay = AppStrings.mondayComplete;
                            break;
                          case 1:
                            weekDay = AppStrings.tuesdayComplete;
                            break;
                          case 2:
                            weekDay = AppStrings.wednesdayComplete;
                            break;
                          case 3:
                            weekDay = AppStrings.thursdayComplete;
                            break;
                          case 4:
                            weekDay = AppStrings.fridayComplete;
                            break;
                          case 5:
                            weekDay = AppStrings.saturdayComplete;
                            break;
                          case 6:
                            weekDay = AppStrings.sundayComplete;
                            break;
                          default:
                            throw Error();
                        }
                        return BarTooltipItem(
                          '$weekDay\n',
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: (rod.toY - 1).toString(),
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    touchCallback: (FlTouchEvent event, barTouchResponse) {
                      setState(() {
                        if (!event.isInterestedForInteractions ||
                            barTouchResponse == null ||
                            barTouchResponse.spot == null) {
                          touchedIndex = -1;
                          return;
                        }
                        touchedIndex =
                            barTouchResponse.spot!.touchedBarGroupIndex;
                      });
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: getTitles,
                        reservedSize: 38,
                      ),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: showingGroups(),
                  gridData: const FlGridData(show: false),
                )),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppStrings.latestWorkout,
                    style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: AppStrings.fontFamilyPoppins),
                  ),
                  TextButton(
                    onPressed: () {
                      //Function to go to see more page
                    },
                    child: Text(
                      AppStrings.seeMore,
                      style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppStrings.fontFamilyHind),
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
                    return LatestActivityRow(wObj: wObj);
                  }),
              SizedBox(
                height: media.width * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    var style = TextStyle(
      color: AppColor.gray,
      fontWeight: FontWeight.w500,
      fontSize: 13,
      fontFamily: AppStrings.fontFamilyHind,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text(AppStrings.sunday, style: style);
        break;
      case 1:
        text = Text(AppStrings.monday, style: style);
        break;
      case 2:
        text = Text(AppStrings.tuesday, style: style);
        break;
      case 3:
        text = Text(AppStrings.wednesday, style: style);
        break;
      case 4:
        text = Text(AppStrings.thursday, style: style);
        break;
      case 5:
        text = Text(AppStrings.friday, style: style);
        break;
      case 6:
        text = Text(AppStrings.saturday, style: style);
        break;
      default:
        text = Text('', style: style);
        break;
    }
    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 18,
      child: text,
    );
  }

  List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
        switch (i) {
          case 0:
            return makeGroupData(0, 5.5, AppColor.primaryG6,
                isTouched: i == touchedIndex);
          case 1:
            return makeGroupData(1, 7.5, AppColor.primaryG7,
                isTouched: i == touchedIndex);
          case 2:
            return makeGroupData(2, 10, AppColor.primaryG6,
                isTouched: i == touchedIndex);
          case 3:
            return makeGroupData(3, 13.5, AppColor.primaryG7,
                isTouched: i == touchedIndex);
          case 4:
            return makeGroupData(4, 15.5, AppColor.primaryG6,
                isTouched: i == touchedIndex);
          case 5:
            return makeGroupData(5, 17.5, AppColor.primaryG7,
                isTouched: i == touchedIndex);
          case 6:
            return makeGroupData(6, 19, AppColor.primaryG6,
                isTouched: i == touchedIndex);
          default:
            return throw Error();
        }
      });

  BarChartGroupData makeGroupData(
    int x,
    double y,
    List<Color> barColor, {
    bool isTouched = false,
    double width = 23,
    List<int> showTooltips = const [],
  }) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: isTouched ? y + 1 : y,
          gradient: LinearGradient(
              colors: barColor,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
          width: width,
          borderSide: isTouched
              ? const BorderSide(color: Colors.green)
              : const BorderSide(color: Colors.white, width: 0),
          backDrawRodData: BackgroundBarChartRodData(
            show: true,
            toY: 20, //barChart.maxValue Y axis
            color: AppColor.black.withOpacity(0.06),
          ),
        ),
      ],
      showingTooltipIndicators: showTooltips,
    );
  }
}
