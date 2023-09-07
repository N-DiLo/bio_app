import 'package:flutter/material.dart';
import '../home_view/home_view.dart';

class SplashViewModel {
  //
  String title = 'StageOne';
  String subText = 'HNGx Internship';

  void startApp(BuildContext context) async {
    Navigator.pushReplacementNamed(context, HomeView.routeName);
  }
}
