import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/widget/normal_button.dart';
import 'package:flutter/material.dart';

import '../widget/round_textfield.dart';
import 'password_forget_page_two.dart';

class PasswordForgetEmailPage extends StatefulWidget {
  const PasswordForgetEmailPage({super.key});

  @override
  State<PasswordForgetEmailPage> createState() =>
      _PasswordForgetEmailPageState();
}

class _PasswordForgetEmailPageState extends State<PasswordForgetEmailPage> {
  /*
 ############ password forget page one API ########################
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future paswordRest() async {
    try {
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: _emailController.text.trim());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            'No user found for that email.',
            textAlign: TextAlign.center,
          ),
        ));
      }
    }
  }

  */

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 0.01,
                  ),
                  Image.asset(
                    'assets/img/openlock.png',
                    width: media.width * 0.4,
                  ),
                  SizedBox(
                    height: media.width * 0.05,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Text(
                          "Please Enter Your Email Address To Send A Password Reset Link",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: AppColor.primaryColor1,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Khand',
                          ),
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
                          height: media.width * 0.3,
                        ),
                        NormalButton(
                          textColor: AppColor.primaryColor1,
                          text: 'Send',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const PasswordForgetCodePage()));
                          },
                          backgroundColor: AppColor.white,
                          widthSize: 330,
                          heightSize: 50,
                          borderColor: AppColor.primaryColor1,
                          fontSize: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
