// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  String title = '';
  void Function()? onTap;
  double? fontSize, height;
  double? width;
  FontWeight? fontWeight;
  Color? color;
  Color? textColor;

  AppButton({
    super.key,
    this.fontSize,
    this.width,
    this.height,
    this.fontWeight,
    this.color,
    this.textColor,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: height,
        width: width,
        duration: const Duration(milliseconds: 5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            title,
            style: GoogleFonts.inter(
              color: textColor,
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
            textScaleFactor: MediaQuery.textScaleFactorOf(context),
          ),
        ),
      ),
    );
  }
}
