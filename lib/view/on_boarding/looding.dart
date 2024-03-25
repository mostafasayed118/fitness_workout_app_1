import 'package:fitness_workout_app_1/view/on_boarding/started_view.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../common/colo_extension.dart';

class LoodingVideo extends StatefulWidget {
  const LoodingVideo({super.key});

  @override
  State<LoodingVideo> createState() => _LoodingVideoState();
}

class _LoodingVideoState extends State<LoodingVideo> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(
      'assets/video/animation_video_3.mp4',
    )
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized.
        setState(() {});
      })
      ..setVolume(0.0);

    _playVideo();
  }

  void _playVideo() async {
    _controller.play();
    await Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const StartedView()));
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: media.height * 0.09,
            ),
            Center(
              child: _controller.value.isInitialized
                  ? AspectRatio(
                      aspectRatio: _controller.value.aspectRatio,
                      child: VideoPlayer(_controller))
                  : Container(),
            ),
            SizedBox(
              height: media.height * 0.05,
            ),
            Text(
              'NutriFix',
              style: TextStyle(
                color: AppColor.primaryColor1,
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily: 'Khand',
              ),
            ),
            Text(
              'Everybood Can Train',
              style: TextStyle(
                color: AppColor.primaryColor1,
                fontSize: 20,
                fontWeight: FontWeight.w700,
                fontFamily: 'Khand',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
