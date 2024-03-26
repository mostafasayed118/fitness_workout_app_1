import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:simple_animation_progress_bar/simple_animation_progress_bar.dart';

import '../../common/colo_extension.dart';
import '../../widget/meal_food_schedule_row.dart';
import '../../widget/nutritions_row.dart';
import '../main_tab/select_view.dart';

class MealScheduleView extends StatefulWidget {
  const MealScheduleView({super.key});

  @override
  State<MealScheduleView> createState() => _MealScheduleViewState();
}

class _MealScheduleViewState extends State<MealScheduleView> {
  CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();

  late DateTime _selectedDateAppBBar;

  List breakfastArr = [
    {
      "name": "Honey Pancake",
      "time": "07:00 PM",
      "image": "assets/images/honey_pan.png"
    },
    {"name": "Coffee", "time": "07:30 PM", "image": "assets/images/coffee.png"},
  ];

  List lunchArr = [
    {
      "name": "Chicken Steak",
      "time": "01:00 PM",
      "image": "assets/images/chicken.png"
    },
    {
      "name": "Milk",
      "time": "01:20 PM",
      "image": "assets/images/glass-of-milk 1.png"
    },
  ];
  List snacksArr = [
    {"name": "Orange", "time": "04:30pm", "image": "assets/images/orange.png"},
    {
      "name": "Apple Pie",
      "time": "04:40 PM",
      "image": "assets/images/apple_pie.png"
    },
  ];
  List dinnerArr = [
    {"name": "Salad", "time": "07:10 PM", "image": "assets/images/salad.png"},
    {"name": "Oatmeal", "time": "08:10 PM", "image": "assets/images/oatmeal.png"},
  ];

  List nutritionArr = [
    {
      "title": "Calories",
      "image": "assets/images/burn.png",
      "unit_name": "kCal",
      "value": "350",
      "max_value": "500",
    },
    {
      "title": "Proteins",
      "image": "assets/images/proteins.png",
      "unit_name": "g",
      "value": "300",
      "max_value": "1000",
    },
    {
      "title": "Fats",
      "image": "assets/images/egg.png",
      "unit_name": "g",
      "value": "250",
      "max_value": "1000",
    },
    {
      "title": "Carbo",
      "image": "assets/images/carbo.png",
      "unit_name": "g",
      "value": "140",
      "max_value": "1000",
    },
  ];

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
          "Meal  Schedule",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
            dayNameFontSize: 12,
            dayNumberFontSize: 16,
            dayBGColor: Colors.grey.withOpacity(0.10),
            titleSpaceBetween: 15,
            backgroundColor: Colors.transparent,
            // fullCalendar: false,
            fullCalendarScroll: FullCalendarScroll.horizontal,
            fullCalendarDay: WeekDay.short,
            selectedDateColor: Colors.white,
            dateColor: Colors.black,
            locale: 'en', //change all locale ( ar )

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
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "BreakFast",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Khand',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "${breakfastArr.length} Items | 230 calories",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: breakfastArr.length,
                      itemBuilder: (context, index) {
                        var mObj = breakfastArr[index] as Map? ?? {};
                        return MealFoodScheduleRow(
                          mObj: mObj,
                          index: index,
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Lunch",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'khand',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "${lunchArr.length} Items | 500 calories",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              // fontFamily: 'Khand',
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: lunchArr.length,
                      itemBuilder: (context, index) {
                        var mObj = lunchArr[index] as Map? ?? {};
                        return MealFoodScheduleRow(
                          mObj: mObj,
                          index: index,
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Snacks",
                          style: TextStyle(
                              color: AppColor.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Khand'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "${snacksArr.length} Items | 140 calories",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: snacksArr.length,
                      itemBuilder: (context, index) {
                        var mObj = snacksArr[index] as Map? ?? {};
                        return MealFoodScheduleRow(
                          mObj: mObj,
                          index: index,
                        );
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dinner",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Khand',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "${dinnerArr.length} Items | 120 calories",
                            style: TextStyle(
                              color: AppColor.gray,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: dinnerArr.length,
                      itemBuilder: (context, index) {
                        var mObj = dinnerArr[index] as Map? ?? {};
                        return MealFoodScheduleRow(
                          mObj: mObj,
                          index: index,
                        );
                      }),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Today Meal Nutrition",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Khand',
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: nutritionArr.length,
                      itemBuilder: (context, index) {
                        var nObj = nutritionArr[index] as Map? ?? {};

                        return NutritionRow(
                          nObj: nObj,
                        );
                      }),
                  SizedBox(
                    height: media.width * 0.05,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
