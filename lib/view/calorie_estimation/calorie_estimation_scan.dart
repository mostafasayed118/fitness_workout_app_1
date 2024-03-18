import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:flutter/material.dart';
import '../../common/colo_extension.dart';
import '../../common_widget/icon_title_next_row.dart';
// import '../../common_widget/round_button.dart';
import '../main_tab/main_tab_view.dart';
import '../main_tab/select_view.dart';
import '../photo_progress/result_view.dart';
import 'calorie_estimation_detalils.dart';

class CaloriesEstimationScan extends StatefulWidget {
  const CaloriesEstimationScan({super.key});

  @override
  State<CaloriesEstimationScan> createState() => _CaloriesEstimationScanState();
}

class _CaloriesEstimationScanState extends State<CaloriesEstimationScan> {
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
          "Scan",
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
            const Spacer(),
            NormalButton(
                textColor: TColor.primaryColor1,
                text: 'Scan',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CalorieEstimationDetails(),
                    ),
                  );
                },
                backgroundColor: TColor.white,
                widthSize: 330,
                heightSize: 55,
                borderColor: TColor.primaryColor1,
                fontSize: 16),
            // RoundButton(
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
              height: 70,
            ),
          ],
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SleepAddAlarmView(
          //       date: _selectedDateAppBBar,
          //     ),
          //   ),
          // );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: TColor.primaryG1,
                end: Alignment.topCenter,
                begin: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black12, blurRadius: 5, offset: Offset(0, 2))
              ]),
          alignment: Alignment.center,
          child: Image.asset(
            'assets/img/gallery_flot.png',
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}