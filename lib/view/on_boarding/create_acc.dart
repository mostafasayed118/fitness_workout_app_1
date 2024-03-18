import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
// import 'package:fitness_workout_app_1/common_widget/round_button.dart';
import 'package:fitness_workout_app_1/view/login/signup_view.dart';
import 'package:flutter/material.dart';

import '../login/login_view.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isCheck = false;
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: TColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: media.height,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: media.width * 0.2,
                ),
                Image(
                    width: media.width * 0.9,
                    image: const AssetImage(
                      'assets/img/create_acc.png',
                    )),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      SizedBox(
                        height: media.width * 0.4,
                      ),

                      NormalButton(
                        textColor: TColor.white,
                        text: 'Create Account',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignupView()));
                        },
                        backgroundColor: TColor.primaryColor1,
                        widthSize: 330,
                        heightSize: 61,
                        borderColor: TColor.primaryColor1,
                        fontSize: 30,
                      )
                      // RoundButton(
                      //   title: "Create Account",
                      //   onPressed:
                      // () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => const SignupView()));
                      //   },
                      //   fontSize: 32,
                      //   fontWeight: FontWeight.w700,
                      // ),
                      ,
                      SizedBox(
                        height: media.width * 0.06,
                      ),
                      NormalButton(
                        textColor: TColor.primaryColor1,
                        text: 'Login',
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginView()));
                        },
                        backgroundColor: TColor.white,
                        widthSize: 330,
                        heightSize: 61,
                        borderColor: TColor.primaryColor1,
                        fontSize: 32,
                      ),
                      // RoundButton(
                      //     title: "Login",
                      // onPressed: () {
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const LoginView()));
                      // }),
                      SizedBox(
                        height: media.width * 0.08,
                      ),
                      // Text(
                      //   'Login As Guest',
                      //   style: TextStyle(
                      //       color: TColor.primaryColor2,
                      //       fontSize: 18,
                      //       fontWeight: FontWeight.w700,
                      //       fontFamily: 'Hind'),
                      // ),
                      SizedBox(
                        height: media.width * 0.08,
                      ),
                      // Column(
                      //   mainAxisSize: MainAxisSize.min,
                      //   crossAxisAlignment: CrossAxisAlignment.center,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       "by continuing you agree to our\nterms of service and with our privacy policy",
                      //       style: TextStyle(
                      //           color: TColor.primaryColor1,
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w500,
                      //           fontFamily: 'Hind'),
                      //       textAlign: TextAlign.center,
                      //     ),
                      //   ],
                      // ),
                      SizedBox(
                        height: media.width * 0.04,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
