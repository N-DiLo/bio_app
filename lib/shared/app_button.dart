// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  String title = '';
  void Function()? onTap;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  Color? textColor;

  AppButton({
    super.key,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textColor,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final mHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: mHeight * 0.06,
        width: double.infinity,
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
              fontWeight: fontWeight,
            ),
            textScaleFactor: MediaQuery.textScaleFactorOf(context),
          ),
        ),
      ),
    );
  }
}