import 'package:dotted_dashed_line/dotted_dashed_line.dart';
import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/core/utils/app_strings.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:fitness_workout_app_1/view/home/activity_tracker_view.dart';
import 'package:fitness_workout_app_1/view/home/finished_workout_view.dart';
// import 'package:fitness_workout_app_1/view/login/complete_profile_view.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import '../../widget/tab_button.dart';
import '../../widget/workout_row.dart';
import '../photo_progress/photo_progress_view.dart';
import '../profile/profile_view.dart';
import 'notification_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List lastWorkoutArr = [
    {
      "name": "Full Body Workout",
      "image": "assets/images/Workout_1.png",
      "kcal": "180",
      "time": "20",
      "progress": 0.3
    },
    {
      "name": "Lower Body Workout",
      "image": "assets/images/Workout_2.png",
      "kcal": "200",
      "time": "30",
      "progress": 0.5
    },
    {
      "name": "Ab Workout",
      "image": "assets/images/Workout_3.png",
      "kcal": "300",
      "time": "40",
      "progress": 0.7
    },
  ];
  List<int> showingTooltipOnSpots = [21];
  List<FlSpot> get allSpots => const [
        FlSpot(0, 20),
        FlSpot(1, 25),
        FlSpot(2, 40),
        FlSpot(3, 50),
        FlSpot(4, 35),
        FlSpot(5, 40),
        FlSpot(6, 30),
        FlSpot(7, 20),
        FlSpot(8, 25),
        FlSpot(9, 40),
        FlSpot(10, 50),
        FlSpot(11, 35),
        FlSpot(12, 50),
        FlSpot(13, 60),
        FlSpot(14, 40),
        FlSpot(15, 50),
        FlSpot(16, 20),
        FlSpot(17, 25),
        FlSpot(18, 40),
        FlSpot(19, 50),
        FlSpot(20, 35),
        FlSpot(21, 80),
        FlSpot(22, 30),
        FlSpot(23, 20),
        FlSpot(24, 25),
        FlSpot(25, 40),
        FlSpot(26, 50),
        FlSpot(27, 35),
        FlSpot(28, 50),
        FlSpot(29, 60),
        FlSpot(30, 40)
      ];
  List waterArr = [
    {"title": "6am - 8am", "subtitle": "600ml"},
    {"title": "9am - 11am", "subtitle": "500ml"},
    {"title": "11am - 2pm", "subtitle": "1000ml"},
    {"title": "2pm - 4pm", "subtitle": "700ml"},
    {"title": "4pm - now", "subtitle": "900ml"},
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    final lineBarsData = [
      LineChartBarData(
        showingIndicators: showingTooltipOnSpots,
        spots: allSpots,
        isCurved: false,
        barWidth: 3,
        belowBarData: BarAreaData(
          show: true,
          gradient: LinearGradient(colors: [
            AppColor.primaryColor1.withOpacity(0.4),
            AppColor.primaryColor2.withOpacity(0.1),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        dotData: const FlDotData(show: false),
        gradient: LinearGradient(
          colors: AppColor.primaryG1,
        ),
      ),
    ];

    final tooltipsOnBar = lineBarsData[0];

    var _textController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${AppStrings.welcomeBack},",
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 12,
                            fontFamily: AppStrings.fontFamilyHind,
                          ),
                        ),
                        Text(
                          "Mustafa Sayed", //user name will be here from api
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            fontFamily: AppStrings.fontFamilyHind,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NotificationView(),
                            ),
                          );
                        },
                        icon: Image.asset(
                          AppAssets.notificationActiveIcon,
                          width: 25,
                          height: 25,
                          fit: BoxFit.fitHeight,
                        ))
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  height: media.width * 0.4,
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor4,
                    borderRadius: BorderRadius.circular(media.width * 0.075),
                  ),
                  child: Stack(alignment: Alignment.center, children: [
                    Image.asset(
                      AppAssets.homeImageBackgroundDots,
                      height: media.width * 0.4,
                      width: double.maxFinite,
                      fit: BoxFit.fitHeight,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.bmi,
                                style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: AppStrings.fontFamilyHind,
                                ),
                              ),
                              Text(
                                "You have a normal weight", // condition will be here according to api
                                style: TextStyle(
                                  color: AppColor.white.withOpacity(0.7),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: AppStrings.fontFamilyHind,
                                ),
                              ),
                              SizedBox(
                                height: media.width * 0.05,
                              ),
                              SizedBox(
                                width: 120,
                                height: 35,
                                child: NormalButton(
                                  textColor: AppColor.primaryColor1,
                                  text: AppStrings.viewMore,
                                  onPressed: () {
                                    //Function to go to BMI
                                  },
                                  backgroundColor: AppColor.white,
                                  widthSize: 120,
                                  heightSize: 30,
                                  borderColor: AppColor.primaryColor1,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          AspectRatio(
                            aspectRatio: 1,
                            child: PieChart(
                              PieChartData(
                                pieTouchData: PieTouchData(
                                  touchCallback:
                                      (FlTouchEvent event, pieTouchResponse) {},
                                ),
                                startDegreeOffset: 250,
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                sectionsSpace: 1,
                                centerSpaceRadius: 0,
                                sections: showingSections(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: AppColor.primaryColor4.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
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
                        width: 80,
                        height: 30,
                        child: NormalButton(
                            textColor: AppColor.primaryColor1,
                            text: AppStrings.check,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ActivityTrackerView(),
                                ),
                              );
                            },
                            backgroundColor: AppColor.white,
                            widthSize: 80,
                            heightSize: 30,
                            borderColor: AppColor.primaryColor1,
                            fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Text(
                  AppStrings.activityStatus,
                  style: TextStyle(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: AppStrings.fontFamilyHind,
                  ),
                ),
                SizedBox(
                  height: media.width * 0.02,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: media.width * 0.4,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor4.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                AppStrings.heartRate,
                                style: TextStyle(
                                  color: AppColor.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: AppStrings.fontFamilyHind,
                                ),
                              ),
                              Text(
                                "78 BPM", // condition will be here according to api
                                style: TextStyle(
                                  color: AppColor.primaryColor1,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: AppStrings.fontFamilyPoppins,
                                ),
                              ),
                            ],
                          ),
                        ),
                        LineChart(
                          LineChartData(
                            showingTooltipIndicators:
                                showingTooltipOnSpots.map((index) {
                              return ShowingTooltipIndicators([
                                LineBarSpot(
                                  tooltipsOnBar,
                                  lineBarsData.indexOf(tooltipsOnBar),
                                  tooltipsOnBar.spots[index],
                                ),
                              ]);
                            }).toList(),
                            lineTouchData: LineTouchData(
                              enabled: true,
                              handleBuiltInTouches: false,
                              touchCallback: (FlTouchEvent event,
                                  LineTouchResponse? response) {
                                if (response == null ||
                                    response.lineBarSpots == null) {
                                  return;
                                }
                                if (event is FlTapUpEvent) {
                                  final spotIndex =
                                      response.lineBarSpots!.first.spotIndex;
                                  showingTooltipOnSpots.clear();
                                  setState(() {
                                    showingTooltipOnSpots.add(spotIndex);
                                  });
                                }
                              },
                              mouseCursorResolver: (FlTouchEvent event,
                                  LineTouchResponse? response) {
                                if (response == null ||
                                    response.lineBarSpots == null) {
                                  return SystemMouseCursors.basic;
                                }
                                return SystemMouseCursors.click;
                              },
                              getTouchedSpotIndicator:
                                  (LineChartBarData barData,
                                      List<int> spotIndexes) {
                                return spotIndexes.map((index) {
                                  return TouchedSpotIndicatorData(
                                    const FlLine(color: Colors.transparent),
                                    FlDotData(
                                      show: true,
                                      getDotPainter:
                                          (spot, percent, barData, index) =>
                                              FlDotCirclePainter(
                                        radius: 3,
                                        color: Colors.white,
                                        strokeWidth: 3,
                                        strokeColor: AppColor.primaryColor1,
                                      ),
                                    ),
                                  );
                                }).toList();
                              },
                              touchTooltipData: LineTouchTooltipData(
                                tooltipBgColor: AppColor.primaryColor1,
                                tooltipRoundedRadius: 20,
                                getTooltipItems:
                                    (List<LineBarSpot> lineBarsSpot) {
                                  return lineBarsSpot.map((lineBarSpot) {
                                    return LineTooltipItem(
                                      "${lineBarSpot.x.toInt()} mins ago",
                                      const TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    );
                                  }).toList();
                                },
                              ),
                            ),
                            lineBarsData: lineBarsData,
                            minY: 0,
                            maxY: 130,
                            titlesData: const FlTitlesData(
                              show: false,
                            ),
                            gridData: const FlGridData(show: false),
                            borderData: FlBorderData(
                              show: true,
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.07,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: media.width * 1.01,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: const [
                              BoxShadow(color: Colors.black12, blurRadius: 2)
                            ]),
                        child: Row(
                          children: [
                            SimpleAnimationProgressBar(
                              height: media.width * 0.84,
                              width: media.width * 0.07,
                              backgroundColor: Colors.grey.shade200,
                              foregrondColor: Colors.green,
                              ratio: 0.5,
                              direction: Axis.vertical,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 5),
                              borderRadius: BorderRadius.circular(15),
                              gradientColor: LinearGradient(
                                  colors: AppColor.primaryG4,
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            ),
                            const SizedBox(
                              width: 11,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    AppStrings.waterIntake,
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: AppStrings.fontFamilyHind,
                                    ),
                                  ),
                                  Text(
                                    "4 Liters", // Function will be here to get water intake
                                    style: TextStyle(
                                      color: AppColor.primaryColor1,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: AppStrings.fontFamilyPoppins,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    AppStrings.realTimeUpdates,
                                    style: TextStyle(
                                        color: AppColor.gray,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700,
                                        fontFamily:
                                            AppStrings.fontFamilyPoppins),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: waterArr.map(
                                      (waterObject) {
                                        var isLast =
                                            waterObject == waterArr.last;
                                        return Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets
                                                      .symmetric(vertical: 4),
                                                  width: 10,
                                                  height: 7,
                                                  decoration: BoxDecoration(
                                                    color: AppColor
                                                        .primaryColor1
                                                        .withOpacity(0.5),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                ),
                                                if (!isLast)
                                                  DottedDashedLine(
                                                    height: media.width * 0.078,
                                                    width: 0,
                                                    axis: Axis.vertical,
                                                    dashColor: AppColor
                                                        .primaryColor1
                                                        .withOpacity(0.5),
                                                  ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  waterObject['title']
                                                      .toString(),
                                                  style: TextStyle(
                                                    color: AppColor.gray,
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w600,
                                                    fontFamily: AppStrings
                                                        .fontFamilyHind,
                                                  ),
                                                ),
                                                Text(
                                                  waterObject['subtitle']
                                                      .toString(),
                                                  style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor1,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w700,
                                                    fontFamily: AppStrings
                                                        .fontFamilyHind,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      },
                                    ).toList(),
                                  ),
                                  SizedBox(
                                    height: media.width * 0.001,
                                  ),
                                  TextField(
                                    controller: _textController,
                                    cursorColor: AppColor.primaryColor1,
                                    decoration: InputDecoration(
                                      hintText: AppStrings.addMlHint,
                                      hintStyle: TextStyle(
                                        color: AppColor.primaryColor1,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w700,
                                        fontFamily: AppStrings.fontFamilyHind,
                                      ),
                                      suffixIcon: IconButton(
                                        icon: Image.asset(
                                            AppAssets.homeAddWaterIcon),
                                        color: AppColor.primaryColor1,
                                        padding: const EdgeInsets.all(0),
                                        onPressed: () {},
                                        tooltip: AppStrings.addWaterIntake,
                                      ),
                                      border: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      errorBorder: InputBorder.none,
                                      disabledBorder: InputBorder.none,
                                    ),
                                    style: TextStyle(
                                      color: AppColor.primaryColor1,
                                      fontSize: 10.3,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: AppStrings.fontFamilyHind,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.05,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            width: double.maxFinite,
                            height: media.width * 0.47,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(color: Colors.black12, blurRadius: 2)
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.sleep,
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppStrings.fontFamilyPoppins,
                                  ),
                                ),
                                Text(
                                  '8h 20m', // this value come from sleep data
                                  style: TextStyle(
                                    color: AppColor.primaryColor1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppStrings.fontFamilyHind,
                                  ),
                                ),
                                const Spacer(),
                                Image.asset(
                                  AppAssets.homeImageTSleepGraph,
                                  width: double.maxFinite,
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: media.width * 0.05,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 25, horizontal: 20),
                            width: double.maxFinite,
                            height: media.width * 0.45,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: const [
                                BoxShadow(color: Colors.black12, blurRadius: 2)
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.calories,
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: AppStrings.fontFamilyPoppins,
                                  ),
                                ),
                                Text(
                                  '760 kCal', // this value come from calories data and this value is for intake calories
                                  style: TextStyle(
                                    color: AppColor.primaryColor1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: AppStrings.fontFamilyHind,
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    width: media.width * 0.2,
                                    height: media.width * 0.2,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: media.width * 0.15,
                                          height: media.width * 0.15,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: AppColor.primaryG1,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                                media.width * 0.075),
                                          ),
                                          child: FittedBox(
                                            child: Text(
                                              '230kCal\nLeft', // this value come from calories data and this value is for left calories
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: AppColor.white,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w500,
                                                fontFamily:
                                                    AppStrings.fontFamilyHind,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SimpleCircularProgressBar(
                                          progressStrokeWidth: 10,
                                          backStrokeWidth: 10,
                                          startAngle: -180,
                                          progressColors: AppColor.primaryG1,
                                          valueNotifier: ValueNotifier(35),
                                          backColor: Colors.grey.shade100,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.workoutProgress,
                      style: TextStyle(
                        color: AppColor.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        fontFamily: AppStrings.fontFamilyPoppins,
                      ),
                    ),
                    Container(
                        height: 30,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: AppColor.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: AppColor.primaryColor1, width: 2),
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
                                            fontFamily:
                                                AppStrings.fontFamilyHind,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ))
                                .toList(),
                            onChanged: (value) {
                              //Function to be implemented
                            },
                            icon: Icon(Icons.expand_more,
                                color: AppColor.primaryColor1),
                            hint: Text(
                              AppStrings.weekly,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: AppColor.primaryColor1,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: AppStrings.fontFamilyHind),
                            ),
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: media.width * 0.5,
                  width: double.maxFinite,
                  child: LineChart(
                    LineChartData(
                      showingTooltipIndicators:
                          showingTooltipOnSpots.map((index) {
                        return ShowingTooltipIndicators([
                          LineBarSpot(
                            tooltipsOnBar,
                            lineBarsData.indexOf(tooltipsOnBar),
                            tooltipsOnBar.spots[index],
                          ),
                        ]);
                      }).toList(),
                      lineTouchData: LineTouchData(
                        enabled: true,
                        handleBuiltInTouches: false,
                        touchCallback:
                            (FlTouchEvent event, LineTouchResponse? response) {
                          if (response == null ||
                              response.lineBarSpots == null) {
                            return;
                          }
                          if (event is FlTapUpEvent) {
                            final spotIndex =
                                response.lineBarSpots!.first.spotIndex;
                            showingTooltipOnSpots.clear();
                            setState(() {
                              showingTooltipOnSpots.add(spotIndex);
                            });
                          }
                        },
                        mouseCursorResolver:
                            (FlTouchEvent event, LineTouchResponse? response) {
                          if (response == null ||
                              response.lineBarSpots == null) {
                            return SystemMouseCursors.basic;
                          }
                          return SystemMouseCursors.click;
                        },
                        getTouchedSpotIndicator:
                            (LineChartBarData barData, List<int> spotIndexes) {
                          return spotIndexes.map((index) {
                            return TouchedSpotIndicatorData(
                              const FlLine(color: Colors.transparent),
                              FlDotData(
                                show: true,
                                getDotPainter:
                                    (spot, percent, barData, index) =>
                                        FlDotCirclePainter(
                                  radius: 3,
                                  color: Colors.white,
                                  strokeWidth: 3,
                                  strokeColor: AppColor.primaryColor1,
                                ),
                              ),
                            );
                          }).toList();
                        },
                        touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor: AppColor.primaryColor1,
                          tooltipRoundedRadius: 20,
                          getTooltipItems: (List<LineBarSpot> lineBarsSpot) {
                            return lineBarsSpot.map((lineBarSpot) {
                              return LineTooltipItem(
                                "${lineBarSpot.x.toInt()} mins ago",
                                const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
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
                            color: AppColor.gray.withOpacity(0.15),
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
                        fontWeight: FontWeight.w600,
                        fontFamily: AppStrings.fontFamilyPoppins,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        AppStrings.seeMore,
                        style: TextStyle(
                          color: AppColor.gray,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: AppStrings.fontFamilyPoppins,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                ListView.builder(
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: lastWorkoutArr.length,
                    itemBuilder: (context, index) {
                      var wObj = lastWorkoutArr[index] as Map? ?? {};
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const FinishedWorkoutView(),
                              ),
                            );
                          },
                          child: WorkoutRow(wObj: wObj));
                    }),
                SizedBox(
                  height: media.width * 0.1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      2,
      (i) {
        var color0 = AppColor.primaryColor1;

        switch (i) {
          case 0:
            return PieChartSectionData(
              color: color0,
              value: 33,
              title: '',
              radius: 50,
              titlePositionPercentageOffset: 0.55,
              badgeWidget: Text(
                '20.1', // value come from BMI calculation
                style: TextStyle(
                    color: AppColor.white,
                    fontFamily: AppStrings.fontFamilyHind,
                    fontWeight: FontWeight.w700,
                    fontSize: 13),
              ),
            );
          case 1:
            return PieChartSectionData(
              color: Colors.white,
              value: 75,
              title: '',
              radius: 42,
              titlePositionPercentageOffset: 0.55,
            );
          // case 2:
          //   return PieChartSectionData(
          //     color: color2,
          //     value: 25,
          //     title: '',
          //     radius: 60,
          //     titlePositionPercentageOffset: 0.6,
          //     borderSide: isTouched
          //         ? const BorderSide(
          //             color: AppColors.contentColorWhite, width: 6)
          //         : BorderSide(
          //             color: AppColors.contentColorWhite.withOpacity(0)),
          //   );
          // case 3:
          //   return PieChartSectionData(
          //     color: color3,
          //     value: 25,
          //     title: '',
          //     radius: 70,
          //     titlePositionPercentageOffset: 0.55,
          //     borderSide: isTouched
          //         ? const BorderSide(
          //             color: AppColors.contentColorWhite, width: 6)
          //         : BorderSide(
          //             color: AppColors.contentColorWhite.withOpacity(0)),
          //   );
          default:
            throw Error();
        }
      },
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
        // gradient: LinearGradient(colors: [
        //   TColor.primaryColor1.withOpacity(0.5),
        //   TColor.primaryColor2.withOpacity(0.5),
        // ]),
        color: AppColor.primaryColor4.withOpacity(0.4),
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
        // gradient: LinearGradient(colors: [
        //   TColor.secondaryColor2.withOpacity(0.5),
        //   TColor.secondaryColor1.withOpacity(0.5),
        // ]),
        color: AppColor.primaryColor1.withOpacity(0.3),
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
          color: AppColor.gray,
          fontSize: 12,
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
        color: AppColor.gray,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: AppStrings.fontFamilyHind);
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
