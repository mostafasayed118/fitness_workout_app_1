import 'package:fitness_workout_app_1/common/colo_extension.dart';
import 'package:fitness_workout_app_1/core/utils/app_assets.dart';
import 'package:fitness_workout_app_1/view/home/activity_tracker_view.dart';
// import 'package:fitness_workout_app_1/view/home/blank_view.dart';
import 'package:fitness_workout_app_1/view/home/home_view.dart';
import 'package:fitness_workout_app_1/view/profile/profile_view.dart';
import 'package:fitness_workout_app_1/view/workout_tracker/workout_tracker_view.dart';
import 'package:flutter/material.dart';

import '../../widget/tab_button.dart';
import '../photo_progress/photo_progress_view.dart';
import 'select_view.dart';

class MainTabView extends StatefulWidget {
  const MainTabView({Key? key}) : super(key: key);

  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int selectTab = 0;
  final PageStorageBucket pageBucket = PageStorageBucket();
  Widget curentTab = const HomeView();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageStorage(
        bucket: pageBucket,
        child: curentTab,
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: InkWell(
          onTap: () {},
          child: Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: AppColor.primaryG2,
              ),
              borderRadius: BorderRadius.circular(35),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2,
                ),
              ],
            ),
            child: Icon(
              Icons.search,
              size: 35,
              color: AppColor.white,
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColor.white,
        elevation: 0,
        child: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: AppColor.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(0, -2),
                blurRadius: 2,
              ),
            ],
          ),

          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TabButton(
                icon: AppAssets.homeTabIcon,
                selectIcon: AppAssets.homeActiveIcon,
                isSelected: selectTab == 0,
                onTap: () {
                  selectTab = 0;
                  curentTab = const HomeView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: AppAssets.activityTabIcon,
                selectIcon: AppAssets.activityActiveIcon,
                isSelected: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                  curentTab = const SelectView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                width: 40,
              ),
              TabButton(
                icon: AppAssets.cameraTabIcon,
                selectIcon: AppAssets.cameraActiveIcon,
                isSelected: selectTab == 2,
                onTap: () {
                  selectTab = 2;
                  curentTab = const PhotoProgressView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
              TabButton(
                icon: AppAssets.profileTabIcon,
                selectIcon: AppAssets.profileIconActive,
                isSelected: selectTab == 3,
                onTap: () {
                  selectTab = 3;
                  curentTab = const ProfileView();
                  if (mounted) {
                    setState(() {});
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
