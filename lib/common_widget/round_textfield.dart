import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:flutter/material.dart';

class RoundTextfield extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String hitText;
  final String iconPath;
  final EdgeInsets? margin;
  final Widget? rigticon;
  final bool obscureText;

  const RoundTextfield(
      {Key? key,
      this.controller,
      required this.hitText,
      required this.iconPath,
      this.margin,
      this.keyboardType,
      this.obscureText = false,
      this.rigticon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
        color: TColor.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        obscureText: obscureText,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hitText,
          hintStyle: const TextStyle(fontFamily: 'Hind'),
          suffixIcon: rigticon,
          prefixIcon: Container(
            alignment: Alignment.center,
            width: 20,
            height: 20,
            child: Image.asset(
              iconPath,
              width: 20,
              height: 20,
              fit: BoxFit.contain,
              color: TColor.gray,
            ),
          ),
          helperStyle: TextStyle(
            color: TColor.gray,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontFamily: 'Hind',
          ),
        ),
      ),
    );
  }
}
