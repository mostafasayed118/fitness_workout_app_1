import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../common/colo_extension.dart';
import '../../widget/food_step_detail_row.dart';
// import '../../common_widget/round_button.dart';
import '../main_tab/select_view.dart';
import 'meal_schedule_view.dart';

class FoodInfoDetailsView extends StatefulWidget {
  final Map mObj;
  final Map dObj;
  const FoodInfoDetailsView(
      {super.key, required this.dObj, required this.mObj});

  @override
  State<FoodInfoDetailsView> createState() => _FoodInfoDetailsViewState();
}

class _FoodInfoDetailsViewState extends State<FoodInfoDetailsView> {
  List nutritionArr = [
    {"image": "assets/img/burn.png", "title": "180 kCal"},
    {"image": "assets/img/egg.png", "title": "30g fats"},
    {"image": "assets/img/proteins.png", "title": "20g proteins"},
    {"image": "assets/img/carbo.png", "title": "50g carbo"},
  ];

  List ingredientsArr = [
    {
      "image": "assets/images/flour.png",
      "title": "Wheat Flour",
      "value": "100grm"
    },
    {"image": "assets/images/sugar.png", "title": "Sugar", "value": "3 tbsp"},
    {
      "image": "assets/images/baking_soda.png",
      "title": "Baking Soda",
      "value": "2tsp"
    },
    {"image": "assets/images/eggs.png", "title": "Eggs", "value": "2 items"},
  ];

  List stepArr = [
    {"no": "1", "detail": "Prepare all of the ingredients that needed"},
    {"no": "2", "detail": "Mix flour, sugar, salt, and baking powder"},
    {
      "no": "3",
      "detail":
          "In a seperate place, mix the eggs and liquid milk until blended"
    },
    {
      "no": "4",
      "detail":
          "Put the egg and milk mixture into the dry ingredients, Stir until smooth and smooth"
    },
    {"no": "5", "detail": "Prepare all of the ingredients that needed"},
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Container(
      decoration:
          BoxDecoration(gradient: LinearGradient(colors: AppColor.primaryG1)),
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
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    AppAssets.leftArrowIcon,
                    width: 30,
                    height: 30,
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
              leading: Container(),
              expandedHeight: media.width * 0.55,
              flexibleSpace: ClipRect(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Transform.scale(
                      scale: 1.25,
                      child: Container(
                        width: media.width * 0.55,
                        height: media.width * 0.51,
                        decoration: BoxDecoration(
                          color: Colors.white24,
                          borderRadius:
                              BorderRadius.circular(media.width * 0.275),
                        ),
                      ),
                    ),
                    Transform.scale(
                      scale: 1.25,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Image.asset(
                          widget.dObj["b_image"].toString(),
                          width: media.width * 0.50,
                          height: media.width * 0.51,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 4,
                            decoration: BoxDecoration(
                                color: AppColor.gray.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(3)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.dObj["name"].toString(),
                                    style: TextStyle(
                                      color: AppColor.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Khand',
                                    ),
                                  ),
                                  Text(
                                    "By Mustafa Sayed",
                                    style: TextStyle(
                                      color: AppColor.gray,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Image.asset(
                                AppAssets.favoriteIcon,
                                width: 20,
                                height: 20,
                                fit: BoxFit.contain,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: media.width * 0.05,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Nutrition",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Khand',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: nutritionArr.length,
                            itemBuilder: (context, index) {
                              var nObj = nutritionArr[index] as Map? ?? {};
                              return Container(
                                  margin: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 4),
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                      color: AppColor.primaryColor4
                                          .withOpacity(0.3),
                                      // gradient: LinearGradient(
                                      //   colors: [
                                      //     TColor.primaryColor2.withOpacity(0.4),
                                      //     TColor.primaryColor1.withOpacity(0.4)
                                      //   ],
                                      // ),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        nObj["image"].toString(),
                                        width: 15,
                                        height: 15,
                                        fit: BoxFit.contain,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          nObj["title"].toString(),
                                          style: TextStyle(
                                            color: AppColor.black,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Descriptions",
                          style: TextStyle(
                            color: AppColor.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Khand',
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: ReadMoreText(
                          'Pancakes are some people\'s favorite breakfast, who doesn\'t like pancakes? Especially with the real honey splash on top of the pancakes, of course everyone loves that! besides being Pancakes are some people\'s favorite breakfast, who doesn\'t like pancakes? Especially with the real honey splash on top of the pancakes, of course everyone loves that! besides being',
                          trimLines: 4,
                          colorClickableText: AppColor.red,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: ' Read More ...',
                          trimExpandedText: ' Read Less',
                          style: TextStyle(
                            color: AppColor.gray,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                          moreStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: AppColor.primaryColor4,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Ingredients That You\nWill Need",
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
                                "${ingredientsArr.length} Items",
                                style: TextStyle(
                                  color: AppColor.gray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: (media.width * 0.25) + 40,
                        child: ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: ingredientsArr.length,
                            itemBuilder: (context, index) {
                              var nObj = ingredientsArr[index] as Map? ?? {};
                              return Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 4),
                                  width: media.width * 0.23,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: media.width * 0.23,
                                        height: media.width * 0.23,
                                        decoration: BoxDecoration(
                                            color: AppColor.gray
                                                .withOpacity(0.050),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        alignment: Alignment.center,
                                        child: Image.asset(
                                          nObj["image"].toString(),
                                          width: 45,
                                          height: 45,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        nObj["title"].toString(),
                                        style: TextStyle(
                                          color: AppColor.black,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        nObj["value"].toString(),
                                        style: TextStyle(
                                          color: AppColor.gray,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ));
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Step by Step",
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
                                "${stepArr.length} Steps",
                                style: TextStyle(
                                  color: AppColor.gray,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        shrinkWrap: true,
                        itemCount: stepArr.length,
                        itemBuilder: ((context, index) {
                          var sObj = stepArr[index] as Map? ?? {};

                          return FoodStepDetailRow(
                            sObj: sObj,
                            isLast: stepArr.last == sObj,
                          );
                        }),
                      ),
                      SizedBox(
                        height: media.width * 0.25,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 20),
                        child: NormalButton(
                            textColor: AppColor.primaryColor1,
                            text: "Add to ${widget.mObj["name"]} Meal",
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const MealScheduleView(),
                                ),
                              );
                            },
                            backgroundColor: AppColor.white,
                            widthSize: 315,
                            heightSize: 60,
                            borderColor: AppColor.primaryColor1,
                            fontSize: 20),
                      ),
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
