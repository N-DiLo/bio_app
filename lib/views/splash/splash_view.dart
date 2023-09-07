import 'dart:async';
import 'package:bio_app/shared/app_color.dart';
import 'package:bio_app/shared/styles.dart';
import 'package:flutter/material.dart';

import 'splash_view_model.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  static const routeName = '/splash';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var splash = SplashViewModel();

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() {
    var duration = const Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() async {
    splash.startApp(context);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: kcWhiteColor,
      body: Column(
        children: [
          SizedBox(height: height * 0.45),
          Center(
            child: SplashText(
              text: splash.title,
              color: kcBlueColor,
              textSize: 40,
            ),
          ),
          SizedBox(height: height * 0.4),
          SplashText(
            text: splash.subText,
            color: kcBlueColor,
            textSize: 12,
          ),
        ],
      ),
    );
  }
}
