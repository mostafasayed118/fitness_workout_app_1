import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColor.primaryColor1,
      content: Text(
        message,
      ),
    ),
  );
}
