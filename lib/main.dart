import 'package:fitness_workout_app_1/firebase_options.dart';
import 'package:fitness_workout_app_1/notification/local_notification_service.dart';
import 'package:fitness_workout_app_1/view/on_boarding/looding.dart';
import 'package:fitness_workout_app_1/view/on_boarding/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'common/colo_extension.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await LocalNotificationService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness 3 in 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: TColor.primaryColor1,
        fontFamily: "Hind",
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: TColor.primaryColor4,
      //   fontFamily: "Hind",
      // ),
      home: const SplashScreen(),
    );
  }
}
