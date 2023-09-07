import 'package:bio_app/shared/app_button.dart';
import 'package:bio_app/shared/app_color.dart';
import 'package:bio_app/shared/app_responsive.dart';
import 'package:bio_app/shared/styles.dart';
import 'package:bio_app/views/home_view/home_view_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    var home = HomeViewModel();

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return ScreenLayout(
      mobile: OrientationLayout(
        portrait: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kcWhiteColor,
          ),
          backgroundColor: kcWhiteColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.02),
                AppText(
                  text: home.name,
                  fontWeight: FontWeight.w700,
                  textSize: 20,
                ),
                AppText(
                  text: home.email,
                  fontWeight: FontWeight.w600,
                  textSize: 15,
                ),
                AppText(
                  text: 'Slack Name: ${home.slackName} | Phone: ${home.phone}',
                  fontWeight: FontWeight.w500,
                  textSize: 12,
                ),
                SizedBox(height: height * 0.04),
                AppButton(
                  title: 'Open GitHub',
                  color: kcPrimaryColor,
                  textColor: kcWhiteColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
