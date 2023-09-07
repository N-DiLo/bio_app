import 'package:bio_app/shared/app_color.dart';
import 'package:flutter/material.dart';

import 'views/home_view/home_view.dart';
import 'views/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kcPrimaryColor),
        useMaterial3: true,
      ),
      home: const SplashView(),

      //App routes
      routes: {
        SplashView.routeName: (ctx) => const SplashView(),
        HomeView.routeName: (ctx) => const HomeView(),
      },
    );
  }
}
