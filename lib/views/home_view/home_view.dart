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
                Container(
                  width: width * 5,
                  height: height * 0.45,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(2, 1.2),
                        color: kcLightColor,
                      )
                    ],
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(home.image),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.02),
                AppText(
                  text: home.name,
                  fontWeight: FontWeight.w700,
                  textSize: 22,
                  color: kcTextColor,
                ),
                AppText(
                  text: home.email,
                  fontWeight: FontWeight.w600,
                  textSize: 15,
                  color: kcTextColor,
                ),
                AppText(
                  text: 'Slack: ${home.slackName} | Phone: ${home.phone}',
                  fontWeight: FontWeight.w600,
                  textSize: 14,
                  color: kcTextColor,
                ),
                SizedBox(height: height * 0.04),
                AppButton(
                  height: height * 0.07,
                  width: double.infinity,
                  title: 'Open GitHub',
                  color: kcPrimaryColor,
                  textColor: kcWhiteColor,
                  fontSize: 18,
                  onTap: () => home.visitGitHub(),
                ),
              ],
            ),
          ),
        ),
        landscape: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: kcWhiteColor,
          ),
          backgroundColor: kcWhiteColor,
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: SingleChildScrollView(
                child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      width: width * 0.3,
                      height: height * 0.7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(home.image),
                        ),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(2, 1.2),
                            color: kcLightColor,
                          )
                        ],
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: home.name,
                      fontWeight: FontWeight.w700,
                      textSize: 25,
                      color: kcTextColor,
                    ),
                    AppText(
                      text: home.email,
                      fontWeight: FontWeight.w600,
                      textSize: 16,
                      color: kcTextColor,
                    ),
                    AppText(
                      text: 'Slack: ${home.slackName} | Phone: ${home.phone}',
                      fontWeight: FontWeight.w600,
                      textSize: 15,
                      color: kcTextColor,
                    ),
                    SizedBox(height: height * 0.08),
                    AppButton(
                      title: 'Open GitHub',
                      color: kcPrimaryColor,
                      textColor: kcWhiteColor,
                      fontSize: 18,
                      height: height * 0.2,
                      width: width * 0.35,
                      onTap: () => home.visitGitHub(),
                    ),
                  ],
                )
              ],
            )),
          ),
        ),
      ),
    );
  }
}
