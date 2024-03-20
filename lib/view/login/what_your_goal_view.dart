import 'package:carousel_slider/carousel_slider.dart';
import 'package:fitness_workout_app_1/common/colo_extension.dart';
// import 'package:fitness_workout_app_1/common_widget/round_button.dart';
import 'package:fitness_workout_app_1/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

import '../../common_widget/normal_button.dart';

class WhatYourGoalView extends StatefulWidget {
  const WhatYourGoalView({Key? key}) : super(key: key);

  @override
  _WhatYourGoalViewState createState() => _WhatYourGoalViewState();
}

class _WhatYourGoalViewState extends State<WhatYourGoalView> {
  CarouselController buttonCarouselController = CarouselController();

  List goalArray = [
    {
      'image': 'assets/img/goal_11.png',
      'title': 'Improve Shape',
      'subtitle':
          'I have a low amount of body fat \n and need / want to build more \n muscle'
    },
    {
      "image": "assets/img/goal_22.png",
      "title": "Lean & Tone",
      "subtitle":
          "I'm Skinny fat. I look thin but have \n no shape. I want to add learn\n muscle in the right way"
    },
    {
      'image': 'assets/img/goal_33.png',
      'title': 'Lose a Fat',
      'subtitle':
          'I have over 20 lbs to lose. I want to \n drop all this fat and gain muscle\n mass'
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: CarouselSlider(
                items: goalArray
                    .map(
                      (goalObject) => Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: TColor.primaryG1,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          // border: Border.all(color: TColor.primaryColor1),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: media.width * 0.1, horizontal: 25),
                        alignment: Alignment.center,
                        child: FittedBox(
                          child: Column(
                            children: [
                              Image.asset(
                                goalObject['image'].toString(),
                                width: media.width * 0.5,
                                fit: BoxFit.fitWidth,
                              ),
                              SizedBox(
                                height: media.width * 0.05,
                              ),
                              Text(
                                goalObject['title'].toString(),
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Hind',
                                ),
                              ),
                              Container(
                                width: media.width * 0.1,
                                height: 1,
                                color: TColor.white,
                              ),
                              SizedBox(
                                height: media.width * 0.03,
                              ),
                              Text(
                                goalObject['subtitle'].toString(),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: TColor.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Hind',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                  // onPageChanged:
                  // onScrolled:
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              width: media.width,
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 0.03,
                  ),
                  Text(
                    'What is Your Goal ?',
                    style: TextStyle(
                      color: TColor.primaryColor1,
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Khand',
                    ),
                  ),
                  Text(
                    'It will help us to choose a best \n program for you ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryColor2,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Hind',
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  NormalButton(
                    textColor: TColor.white,
                    text: 'Confirm',
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeView()));
                    },
                    backgroundColor: TColor.primaryColor1,
                    widthSize: 330,
                    heightSize: 61,
                    borderColor: TColor.primaryColor1,
                    fontSize: 32,
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
