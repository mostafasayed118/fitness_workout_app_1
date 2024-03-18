import 'package:fitness_workout_app_1/common/colo_extension.dart';
// import 'package:fitness_workout_app_1/common_widget/round_button.dart';
// import 'package:fitness_workout_app_1/view/login/complete_profile_view.dart';
import 'package:fitness_workout_app_1/forget_password/password_forget_page_one.dart';
// import 'package:fitness_workout_app_1/view/home/home_view.dart';
import 'package:fitness_workout_app_1/view/login/signup_view.dart';
import 'package:flutter/material.dart';

import '../../common_widget/normal_button.dart';
import '../../common_widget/round_textfield.dart';
import '../main_tab/main_tab_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
                  height: media.width * 0.06,
                ),
                Text(
                  "Hey there,",
                  style: TextStyle(
                      color: TColor.primaryColor2,
                      fontSize: 16,
                      fontFamily: 'Hind',
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: TColor.primaryColor1,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Hind',
                  ),
                ),
                SizedBox(
                  height: media.width * 0.05,
                ),
                SizedBox(
                  height: media.width * 0.08,
                ),
                const RoundTextfield(
                  hitText: 'Email',
                  iconPath: 'assets/img/email.png',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                RoundTextfield(
                  hitText: 'Password',
                  obscureText: true,
                  iconPath: 'assets/img/lock.png',
                  keyboardType: TextInputType.visiblePassword,
                  rigticon: TextButton(
                    onPressed: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        'assets/img/show_password.png',
                        width: 20,
                        height: 20,
                        fit: BoxFit.contain,
                        color: TColor.gray,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.width * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const PasswordForgetEmailPage()));
                      },
                      child: Text(
                        "Forgot Your Password?",
                        style: TextStyle(
                          color: TColor.primaryColor2,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Hind',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.4,
                ),
                // const Spacer(),
                NormalButton(
                  textColor: TColor.white,
                  text: 'Login',
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
                //   title: "Login",
                //   onPressed: () {
                //     Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const CompleteProfileView()));
                //   },
                //   fontSize: 32,
                //   fontWeight: FontWeight.w700,
                // ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: TColor.primaryColor1.withOpacity(0.5),
                      ),
                    ),
                    Text(
                      ' Or ',
                      style: TextStyle(
                          color: TColor.primaryColor2,
                          fontSize: 14,
                          fontFamily: 'Hind',
                          fontWeight: FontWeight.w500),
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: TColor.primaryColor1.withOpacity(0.5),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                        ),
                        child: Image.asset(
                          'assets/img/google1.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                        ),
                        child: Image.asset(
                          'assets/img/facebook1.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: TColor.white,
                        ),
                        child: Image.asset(
                          'assets/img/x.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupView()));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't have an account yet? ",
                        style: TextStyle(
                            color: TColor.primaryColor1,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Hind'),
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: TColor.primaryColor2,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Hind',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
