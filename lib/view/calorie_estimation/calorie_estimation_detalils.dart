import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:fitness_workout_app_1/view/home/blank_view.dart';
import 'package:flutter/material.dart';
import '../../common/colo_extension.dart';
import '../../common_widget/icon_title_next_row.dart';
import '../../common_widget/round_button.dart';
import '../main_tab/main_tab_view.dart';
import '../main_tab/select_view.dart';
import '../photo_progress/result_view.dart';

class CalorieEstimationDetails extends StatefulWidget {
  const CalorieEstimationDetails({super.key});

  @override
  State<CalorieEstimationDetails> createState() =>
      _CalorieEstimationDetailsState();
}

class _CalorieEstimationDetailsState extends State<CalorieEstimationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
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
          "Details",
          style: TextStyle(
            color: TColor.black,
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
                "assets/img/not_btn_1.png",
                width: 30,
                height: 30,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: TColor.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            // const Spacer(),
            // NormalButton(
            //     textColor: TColor.primaryColor1,
            //     text: 'Next',
            //     onPressed: () {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const BlankView()),
            //       );
            //     },
            //     backgroundColor: TColor.white,
            //     widthSize: 330,
            //     heightSize: 55,
            //     borderColor: TColor.primaryColor1,
            //     fontSize: 16),
            // // RoundButton(
            //   title: "Compare",
            //   onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ResultView(
            //       date1: DateTime(2024, 1, 1),
            //       date2: DateTime(2024, 2, 1),
            //     ),
            //   ),
            // );
            //   },
            //   fontSize: 16,
            //   elevation: 0,
            //   fontWeight: FontWeight.normal,
            // ),

            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
