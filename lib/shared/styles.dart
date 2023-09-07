// ignore_for_file: must_be_immutable

import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

//Text style for general app look & feel
class AppText extends StatelessWidget {
  Color? color;
  String text = '';
  TextStyle? style;
  TextAlign? textAlign;
  double? textSize;
  FontWeight? fontWeight;
  bool? softWrap;

  AppText({
    super.key,
    this.color,
    this.style,
    this.fontWeight,
    this.softWrap,
    this.textSize,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        color: color,
        fontSize: textSize,
        fontWeight: fontWeight,
      ),
      textAlign: textAlign,
      textScaleFactor: MediaQuery.textScaleFactorOf(context),
    );
  }
}

//Created textstyle for splash view
class SplashText extends StatelessWidget {
  Color? color;
  String text = '';
  TextAlign? textAlign;
  double? textSize;

  SplashText({
    super.key,
    this.color,
    this.textSize,
    required this.text,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.salsa(
        color: color,
        fontSize: textSize,
        fontWeight: FontWeight.w700,
      ),
      textAlign: textAlign,
      textScaleFactor: MediaQuery.textScaleFactorOf(context),
    );
  }
}
