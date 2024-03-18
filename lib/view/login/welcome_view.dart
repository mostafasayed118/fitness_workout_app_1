import 'package:fitness_workout_app_1/common/colo_extension.dart';
// import 'package:fitness_workout_app_1/common_widget/round_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../common_widget/normal_button.dart';
// import '../home/home_view.dart';
import '../main_tab/main_tab_view.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  _WelcomeViewState createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'We Are Creating A Perfect Plan For You',
                      style: TextStyle(
                        color: TColor.primaryColor1,
                        fontSize: 22,
                        fontFamily: 'Khand',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.2,
                ),
                Lottie.asset(
                  'assets/animation/animation _welcome.json',
                  width: 225,
                  height: 290,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: media.width * 0.01,
                ),
                Text(
                  "Welcome,Mustafa",
                  style: TextStyle(
                    color: TColor.primaryColor2,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Khand',
                  ),
                ),
                Text(
                  "You are all set now, let's reach your\n goals together with us ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryColor1,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Khand',
                  ),
                ),
                SizedBox(
                  height: media.width * 0.2,
                ),

                NormalButton(
                  textColor: TColor.white,
                  text: 'Go To Home',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainTabView()));
                  },
                  backgroundColor: TColor.primaryColor1,
                  widthSize: 330,
                  heightSize: 61,
                  borderColor: TColor.primaryColor1,
                  fontSize: 32,
                ),
                // RoundButton(
                //   title: "Go To Home",
                //   onPressed: () {
                //     // Navigator.push(
                //     //     context,
                //     //     MaterialPageRoute(
                //     //         builder: (context) => const WelcomeView()));
                //   },
                //   fontSize: 32,
                //   fontWeight: FontWeight.w700,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
