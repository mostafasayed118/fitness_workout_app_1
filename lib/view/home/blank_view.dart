import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:flutter/material.dart';

class BlankView extends StatefulWidget {
  const BlankView({Key? key}) : super(key: key);

  @override
  _BlankViewState createState() => _BlankViewState();
}

class _BlankViewState extends State<BlankView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TColor.white,
    );
  }
}
