import 'package:fitness_workout_app_1/notification/local_notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../../common/colo_extension.dart';
import '../../common_widget/notification_row.dart';
import '../main_tab/select_view.dart';

class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  List notificationArr = [
    {
      "image": "assets/img/not_3.png",
      "title": "Hey, it's time for lunch",
      "time": "About 1 minutes ago"
    },
    {
      "image": "assets/img/Workout_2.png",
      "title": "Don't miss your lowerbody workout",
      "time": "About 3 hours ago"
    },
    {
      "image": "assets/img/not_2.png",
      "title": "Hey, let's add some meals for your b",
      "time": "About 3 hours ago"
    },
    {
      "image": "assets/img/Workout_3.png",
      "title": "Congratulations, You have finished A..",
      "time": "29 May"
    },
    {
      "image": "assets/img/not_1.png",
      "title": "Hey, it's time for lunch",
      "time": "8 April"
    },
    {
      "image": "assets/img/Workout_2.png",
      "title": "Ups, You have missed your Lowerbo...",
      "time": "8 April"
    },
  ];
  void listenToNotificationStream() {
    LocalNotificationService.streamController.stream.listen((event) {
      setState(() {});
    });
  }

  @override
  void initState() {
    listenToNotificationStream();
    super.initState();
  }
  // final NotificationResponse response;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.white,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
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
          "Notification",
          style: TextStyle(
            color: TColor.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontFamily: 'khand',
          ),
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
                  // color: TColor.primaryColor1.withOpacity(0.2), //Rahma edit
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
      backgroundColor: TColor.white,
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          itemBuilder: ((context, index) {
            var nObj = notificationArr[index] as Map? ?? {};
            return NotificationRow(nObj: nObj);
          }),
          separatorBuilder: (context, index) {
            return Divider(
              color: TColor.gray.withOpacity(0.5),
              height: 1,
            );
          },
          itemCount: notificationArr.length),
    );
  }
}
