import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:flutter/material.dart';
import '../../common/colo_extension.dart';
import '../../widget/icon_title_next_row.dart';
import '../../widget/round_button.dart';
import '../main_tab/main_tab_view.dart';
import '../main_tab/select_view.dart';
import 'result_view.dart';

class ComparisonView extends StatefulWidget {
  const ComparisonView({super.key});

  @override
  State<ComparisonView> createState() => _ComparisonViewState();
}

class _ComparisonViewState extends State<ComparisonView> {
  @override
  Widget build(BuildContext context) {
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
          "Comparison",
          style: TextStyle(
              color: AppColor.black, fontSize: 16, fontWeight: FontWeight.w700),
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
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            IconTitleNextRow(
                icon: "assets/img/date.png",
                title: "Select Month 1",
                time: "May",
                onPressed: () {},
                color: AppColor.gray),
            const SizedBox(
              height: 15,
            ),
            IconTitleNextRow(
                icon: "assets/img/date.png",
                title: "Select Month 2",
                time: "select Month",
                onPressed: () {},
                color: AppColor.gray),
            const Spacer(),
            NormalButton(
                textColor: AppColor.primaryColor1,
                text: 'Compare',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultView(
                        date1: DateTime(2024, 1, 1),
                        date2: DateTime(2024, 2, 1),
                      ),
                    ),
                  );
                },
                backgroundColor: AppColor.white,
                widthSize: 330,
                heightSize: 55,
                borderColor: AppColor.primaryColor1,
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
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
