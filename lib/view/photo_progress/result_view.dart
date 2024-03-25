import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../common/colo_extension.dart';
import '../../common/common.dart';
import '../../widget/round_button.dart';
import '../main_tab/main_tab_view.dart';
import '../main_tab/select_view.dart';

class ResultView extends StatefulWidget {
  final DateTime date1;
  final DateTime date2;
  const ResultView({super.key, required this.date1, required this.date2});

  @override
  State<ResultView> createState() => _ResultViewState();
}

class _ResultViewState extends State<ResultView> {
  int selectButton = 0;

  List imaArr = [
    {
      "title": "Front Facing",
      "month_1_image": "assets/img/pp_1.png",
      "month_2_image": "assets/img/pp_2.png",
    },
    {
      "title": "Back Facing",
      "month_1_image": "assets/img/pp_3.png",
      "month_2_image": "assets/img/pp_4.png",
    },
    {
      "title": "Left Facing",
      "month_1_image": "assets/img/pp_5.png",
      "month_2_image": "assets/img/pp_6.png",
    },
    {
      "title": "Right Facing",
      "month_1_image": "assets/img/pp_7.png",
      "month_2_image": "assets/img/pp_8.png",
    },
  ];

  List statArr = [
    {
      "title": "Lose Weight",
      "diff_per": "33",
      "month_1_per": "33%",
      "month_2_per": "67%",
    },
    {
      "title": "Height Increase",
      "diff_per": "88",
      "month_1_per": "88%",
      "month_2_per": "12%",
    },
    {
      "title": "Muscle Mass Increase",
      "diff_per": "57",
      "month_1_per": "57%",
      "month_2_per": "43%",
    },
    {
      "title": "Abs",
      "diff_per": "89",
      "month_1_per": "89%",
      "month_2_per": "11%",
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
            decoration: BoxDecoration(
                // color: TColor.primaryColor1.withOpacity(0.2), //Rahma edit
                // color: TColor.lightGray,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/img/not_butt.png",
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Result",
          style: TextStyle(
            color: AppColor.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Khand',
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => const SelectView(),
              //   ),
              // );

              //Functionality to be added later
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
                "assets/img/Share_img.png",
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
          ),
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
                "assets/img/not_btn_1.png",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 55,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: AppColor.lightGray,
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(alignment: Alignment.center, children: [
                  AnimatedContainer(
                    alignment: selectButton == 0
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    duration: const Duration(milliseconds: 300),
                    child: Container(
                      width: (media.width * 0.5) - 40,
                      height: 40,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: AppColor.primaryG1),
                          borderRadius: BorderRadius.circular(30)),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectButton = 0;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Photo",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: selectButton == 0
                                        ? AppColor.white
                                        : AppColor.gray,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                selectButton = 1;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30)),
                              child: Text(
                                "Statistic",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: selectButton == 1
                                        ? AppColor.white
                                        : AppColor.gray,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),

              const SizedBox(
                height: 20,
              ),

              //Photo Tab UI
              if (selectButton == 0)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Average Progress",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "Good",
                          style: TextStyle(
                              color: AppColor.primaryColor1.withOpacity(0.8),
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        SimpleAnimationProgressBar(
                          height: 20,
                          width: media.width - 40,
                          backgroundColor: Colors.grey.shade200,
                          foregrondColor: Colors.purple,
                          ratio: 0.62,
                          direction: Axis.horizontal,
                          curve: Curves.fastLinearToSlowEaseIn,
                          duration: const Duration(seconds: 3),
                          borderRadius: BorderRadius.circular(10),
                          gradientColor: LinearGradient(
                              colors: AppColor.primaryG1,
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                        ),
                        Text(
                          "62%",
                          style: TextStyle(
                            color: AppColor.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'hind',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dateToString(widget.date1, formatStr: "MMMM"),
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'hind',
                          ),
                        ),
                        Text(
                          dateToString(widget.date2, formatStr: "MMMM"),
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'hind',
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: imaArr.length,
                        itemBuilder: (context, index) {
                          var iObj = imaArr[index] as Map? ?? {};

                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  iObj["title"].toString(),
                                  style: TextStyle(
                                    color: AppColor.gray,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'hind',
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColor.lightGray,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              iObj["month_1_image"].toString(),
                                              width: double.maxFinite,
                                              height: double.maxFinite,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Expanded(
                                      child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: AppColor.lightGray,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              iObj["month_2_image"].toString(),
                                              width: double.maxFinite,
                                              height: double.maxFinite,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ]);
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    NormalButton(
                      textColor: AppColor.primaryColor1,
                      text: 'Back to Home',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      backgroundColor: AppColor.white,
                      widthSize: 315,
                      heightSize: 55,
                      borderColor: AppColor.primaryColor1,
                      fontSize: 18,
                    )
                    // RoundButton(
                    //   title: "Back to Home",
                    // onPressed: () {
                    //   Navigator.pop(context);
                    // },
                    //   fontSize: 16,
                    //   elevation: 0,
                    //   fontWeight: FontWeight.normal,
                    // ),
                    ,
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),

              // Statistic Tab UI
              if (selectButton == 1)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: media.width * 0.5,
                      width: double.maxFinite,
                      child: LineChart(
                        LineChartData(
                          lineTouchData: LineTouchData(
                            enabled: true,
                            handleBuiltInTouches: false,
                            touchCallback: (FlTouchEvent event,
                                LineTouchResponse? response) {
                              if (response == null ||
                                  response.lineBarSpots == null) {
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
                            mouseCursorResolver: (FlTouchEvent event,
                                LineTouchResponse? response) {
                              if (response == null ||
                                  response.lineBarSpots == null) {
                                return SystemMouseCursors.basic;
                              }
                              return SystemMouseCursors.click;
                            },
                            getTouchedSpotIndicator: (LineChartBarData barData,
                                List<int> spotIndexes) {
                              return spotIndexes.map((index) {
                                return TouchedSpotIndicatorData(
                                  const FlLine(
                                    color: Colors.transparent,
                                  ),
                                  FlDotData(
                                    show: true,
                                    getDotPainter:
                                        (spot, percent, barData, index) =>
                                            FlDotCirclePainter(
                                      radius: 3,
                                      color: Colors.white,
                                      strokeWidth: 3,
                                      strokeColor: AppColor.primaryColor4,
                                    ),
                                  ),
                                );
                              }).toList();
                            },
                            touchTooltipData: LineTouchTooltipData(
                              tooltipBgColor: AppColor.primaryColor4,
                              tooltipRoundedRadius: 20,
                              getTooltipItems:
                                  (List<LineBarSpot> lineBarsSpot) {
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
                                color: AppColor.gray.withOpacity(0.1),
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
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          dateToString(widget.date1, formatStr: "MMMM"),
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind',
                          ),
                        ),
                        Text(
                          dateToString(widget.date2, formatStr: "MMMM"),
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Hind',
                          ),
                        ),
                      ],
                    ),
                    ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: statArr.length,
                        itemBuilder: (context, index) {
                          var iObj = statArr[index] as Map? ?? {};

                          return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  iObj["title"].toString(),
                                  style: TextStyle(
                                    color: AppColor.gray,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Hind',
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: 25,
                                      child: Text(
                                        iObj["month_1_per"].toString(),
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                            color: AppColor.gray,
                                            fontSize: 12,
                                            fontFamily: 'Hind',
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SimpleAnimationProgressBar(
                                      height: 10,
                                      width: media.width - 120,
                                      backgroundColor: AppColor.primaryColor4,
                                      foregrondColor: AppColor.primaryColor9
                                          .withOpacity(0.9),
                                      ratio: (double.tryParse(iObj["diff_per"]
                                                  .toString()) ??
                                              0.0) /
                                          100.0,
                                      direction: Axis.horizontal,
                                      curve: Curves.fastLinearToSlowEaseIn,
                                      duration: const Duration(seconds: 3),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    SizedBox(
                                      width: 25,
                                      child: Text(
                                        iObj["month_2_per"].toString(),
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: AppColor.gray,
                                          fontSize: 12,
                                          fontFamily: 'Hind',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ]);
                        }),
                    const SizedBox(
                      height: 35,
                    ),
                    NormalButton(
                        textColor: AppColor.primaryColor1,
                        text: 'Back to Home',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        backgroundColor: AppColor.white,
                        widthSize: 315,
                        heightSize: 50,
                        borderColor: AppColor.primaryColor1,
                        fontSize: 18),
                    // RoundButton(
                    //   title: "Back to Home",
                    //   onPressed: () {
                    //     Navigator.pop(context);
                    //   },
                    //   fontSize: 16,
                    //   elevation: 0,
                    //   fontWeight: FontWeight.normal,
                    // ),

                    const SizedBox(
                      height: 15,
                    ),
                  ],
                )
            ],
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
        color: AppColor.primaryColor4,
        // gradient: LinearGradient(colors: TColor.primaryG4),
        barWidth: 3,
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
        color: AppColor.primaryColor9.withOpacity(0.3),
        // gradient: LinearGradient(colors: [
        //   TColor.secondaryColor2.withOpacity(0.5),
        //   TColor.secondaryColor1.withOpacity(0.5)
        // ]),
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
          fontFamily: 'Hind',
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
      color: AppColor.gray,
      fontSize: 12,
      fontFamily: 'Hind',
      fontWeight: FontWeight.w500,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('Jan', style: style);
        break;
      case 2:
        text = Text('Feb', style: style);
        break;
      case 3:
        text = Text('Mar', style: style);
        break;
      case 4:
        text = Text('Apr', style: style);
        break;
      case 5:
        text = Text('May', style: style);
        break;
      case 6:
        text = Text('Jun', style: style);
        break;
      case 7:
        text = Text('Jul', style: style);
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
