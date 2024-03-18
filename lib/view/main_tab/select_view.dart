import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:fitness_workout_app_1/view/calorie_estimation/calorie_estimation_scan.dart';
import 'package:fitness_workout_app_1/view/home/blank_view.dart';
import 'package:fitness_workout_app_1/view/home/home_view.dart';
import 'package:fitness_workout_app_1/view/photo_progress/photo_progress_view.dart';
import 'package:flutter/material.dart';

import '../../common/colo_extension.dart';
import '../../common_widget/round_button.dart';
import '../meal_planner/meal_planner_view.dart';
import '../sleep_tracker/sleep_tracker_view.dart';
import '../workout_tracker/workout_tracker_view.dart';

class SelectView extends StatelessWidget {
  const SelectView({super.key});

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
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
              "assets/img/not_butt.png",
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Select Page",
          style: TextStyle(
            color: TColor.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'Khand',
          ),
        ),
        // actions: [
        //   InkWell(
        //     onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => SelectView(),
        //   ),
        // );
        //     },
        //     child: Container(
        //       margin: const EdgeInsets.all(8),
        //       height: 40,
        //       width: 40,
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //           // color: TColor.lightGray,
        //           borderRadius: BorderRadius.circular(10)),
        //       child: Image.asset(
        //         "assets/img/not_btn_1.png",
        //         width: 30,
        //         height: 30,
        //         fit: BoxFit.contain,
        //       ),
        //     ),
        //   )
        // ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            const SizedBox(
              height: 15,
            ),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'WorkOut Tracker',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const WorkoutTrackerView(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            const SizedBox(
              height: 15,
            ),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Meal Planner',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MealPlannerView(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            const SizedBox(
              height: 15,
            ),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Sleep Tracker',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SleepTrackerView(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            const SizedBox(
              height: 15,
            ),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Progress Tracker',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PhotoProgressView(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            const SizedBox(
              height: 15,
            ),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Calories Estimation',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CaloriesEstimationScan(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 315,
                heightSize: 60,
                borderColor: TColor.primaryColor1,
                fontSize: 20),
            // RoundButton(
            //   title: "Workout Tracker",
            //   onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => const WorkoutTrackerView(),
            //   ),
            // );
            //   },
            //   elevation: 0,
            //   fontWeight: FontWeight.w700,
            //   fontSize: 18,
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // RoundButton(
            //   title: "Meal Planner",
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const MealPlannerView(),
            //       ),
            //     );
            //   },
            //   elevation: 0,
            //   fontWeight: FontWeight.w700,
            //   fontSize: 18,
            // ),
            // const SizedBox(
            //   height: 15,
            // ),
            // RoundButton(
            //   title: "Sleep Tracker",
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => const SleepTrackerView(),
            //       ),
            //     );
            //   },
            //   elevation: 0,
            //   fontWeight: FontWeight.w700,
            //   fontSize: 18,
            // )
          ],
        ),
      ),
    );
  }
}
