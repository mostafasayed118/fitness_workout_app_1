import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/common_widget/normal_button.dart';
import 'package:flutter/material.dart';

import '../common_widget/round_textfield.dart';
import '../view/login/login_view.dart';

class PasswordForgetCodePage extends StatefulWidget {
  const PasswordForgetCodePage({super.key});

  @override
  State<PasswordForgetCodePage> createState() => _PasswordForgetCodePageState();
}

class _PasswordForgetCodePageState extends State<PasswordForgetCodePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: TColor.white,
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
                    'assets/img/email_with_encrypted_password.png',
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
                          "Please Enter The 4 Digit Code Sent To Your Email",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TColor.primaryColor1,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Khand',
                          ),
                        ),
                        SizedBox(
                          height: media.width * 0.06,
                        ),
                        const RoundTextfield(
                          hitText: 'Email',
                          iconPath: 'assets/img/email.png',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: media.width * 0.2,
                        ),
                        NormalButton(
                          textColor: TColor.primaryColor1,
                          text: 'Send',
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginView()));
                          },
                          backgroundColor: TColor.white,
                          widthSize: 330,
                          heightSize: 50,
                          borderColor: TColor.primaryColor1,
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
