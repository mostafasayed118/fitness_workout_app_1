import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';

import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../common/colo_extension.dart';
import '../../widget/round_button.dart';
import '../../widget/today_sleep_schedule_row.dart';
import '../main_tab/select_view.dart';
import 'sleep_add_alarm_view.dart';

class SleepScheduleView extends StatefulWidget {
  const SleepScheduleView({super.key});

  @override
  State<SleepScheduleView> createState() => _SleepScheduleViewState();
}

class _SleepScheduleViewState extends State<SleepScheduleView> {
  final CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  late DateTime _selectedDateAppBBar;

  List todaySleepArr = [
    {
      "name": "Bedtime",
      "image": "assets/images/bed.png",
      "time": "28/02/2024 09:00 PM",
      "duration": "in 6 hours | 22 minutes"
    },
    {
      "name": "Alarm",
      "image": "assets/images/alaarm.png",
      "time": "29/02/2024 05:10 AM",
      "duration": "in 14 hours | 30 minutes"
    },
  ];

  List<int> showingTooltipOnSpots = [4];

  @override
  void initState() {
    super.initState();
    _selectedDateAppBBar = DateTime.now();
  }

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
          "Sleep Schedule",
          style: TextStyle(
            color: AppColor.black,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontFamily: 'Hind',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(20),
                    height: media.width * 0.4,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor4.withOpacity(0.3),
                        
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Ideal Hours for Sleep",
                              style: TextStyle(
                                color: AppColor.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Khand',
                              ),
                            ),
                            Text(
                              "8 hours | 30 minutes",
                              style: TextStyle(
                                color: AppColor.primaryColor2,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Hind',
                              ),
                            ),
                            const Spacer(),
                            SizedBox(
                              width: 110,
                              height: 35,
                              child: NormalButton(
                                textColor: AppColor.primaryColor1,
                                text: 'Learn More',
                                onPressed: () {},
                                backgroundColor: AppColor.white,
                                widthSize: 95,
                                heightSize: 35,
                                borderColor: AppColor.primaryColor1,
                                fontSize: 14,
                              ),
                             
                            ),
                          ],
                        ),
                        Image.asset(
                          "assets/images/sleep_layer.png",
                          width: media.width * 0.35,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(
                    "Your Schedule",
                    style: TextStyle(
                      color: AppColor.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Khand',
                    ),
                  ),
                ),
                CalendarAgenda(
                  controller: _calendarAgendaControllerAppBar,
                  appbar: false,
                  selectedDayPosition: SelectedDayPosition.center,
                  leading: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                       AppAssets.leftArrowGrayIcon,
                        width: 15,
                        height: 15,
                      )),
                  training: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        AppAssets.rightArrowGrayIcon,
                        width: 15,
                        height: 15,
                      )),
                  weekDay: WeekDay.short,
                  dayNameFontSize: 13,
                  dayNumberFontSize: 16,
                  dayBGColor: AppColor.primaryColor4.withOpacity(0.10),
                  titleSpaceBetween: 15,
                  backgroundColor: Colors.transparent,
                  // fullCalendar: false,
                  fullCalendarScroll: FullCalendarScroll.horizontal,
                  fullCalendarDay: WeekDay.short,
                  selectedDateColor: Colors.white,
                  dateColor: Colors.black,
                  locale: 'en',

                  initialDate: DateTime.now(),
                  calendarEventColor: AppColor.primaryColor4.withOpacity(0.7),
                  firstDate: DateTime.now().subtract(const Duration(days: 140)),
                  lastDate: DateTime.now().add(const Duration(days: 60)),

                  onDateSelected: (date) {
                    _selectedDateAppBBar = date;
                  },
                  selectedDayLogo: Container(
                    width: double.maxFinite,
                    height: double.maxFinite,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: AppColor.primaryG4,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.03,
                ),
                ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: todaySleepArr.length,
                    itemBuilder: (context, index) {
                      var sObj = todaySleepArr[index] as Map? ?? {};
                      return TodaySleepScheduleRow(
                        sObj: sObj,
                      );
                    }),
                Container(
                    width: double.maxFinite,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor7.withOpacity(0.25),
                        // gradient: LinearGradient(colors: [
                        //   TColor.primaryColor1.withOpacity(0.4),
                        //   TColor.primaryColor1.withOpacity(0.4)
                        // ]),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "You will get 8 hours | 10 minutes\nfor tonight",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Hind',
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SimpleAnimationProgressBar(
                              height: 15,
                              width: media.width - 80,
                              backgroundColor: Colors.grey.shade100,
                              foregrondColor: Colors.green,
                              ratio: 0.96,
                              direction: Axis.horizontal,
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(seconds: 3),
                              borderRadius: BorderRadius.circular(7.5),
                              gradientColor: LinearGradient(
                                colors: AppColor.primaryG8,
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                            ),
                            Text(
                              "96%", //Value of the progress bar returned from the api call to get the progress bar value
                              style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Hind',
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: media.width * 0.17,
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SleepAddAlarmView(
                date: _selectedDateAppBBar,
              ),
            ),
          );
        },
        child: Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: AppColor.primaryG1,
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
              borderRadius: BorderRadius.circular(27.5),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
              ]),
          alignment: Alignment.center,
          child: Icon(
            Icons.add,
            size: 20,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
