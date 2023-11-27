import 'package:flutter/material.dart';
import 'package:demo/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray50,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray400 => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fillGray5001 => BoxDecoration(
        color: appTheme.gray5001,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red700,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.7),
      );

  // Gradient decorations
  static BoxDecoration get gradientBlueAToCyan => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.2, 0.08),
          end: Alignment(-0.2, 0.27),
          colors: [
            appTheme.blueA400,
            appTheme.cyan500,
          ],
        ),
      );
  static BoxDecoration get gradientBlueToBlue => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.15, 0.88),
          end: Alignment(1.18, 0.25),
          colors: [
            appTheme.blue70059,
            appTheme.blue500,
          ],
        ),
      );
  static BoxDecoration get gradientCyanToCyanAF => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.13, 0.7),
          end: Alignment(1.07, 0.35),
          colors: [
            appTheme.cyan400.withOpacity(0.07),
            appTheme.cyanA4003f,
          ],
        ),
      );
  static BoxDecoration get gradientGreenToTeal => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.15, 0.88),
          end: Alignment(1.18, 0.25),
          colors: [
            appTheme.green40049,
            appTheme.teal500,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get circleBorder19 => BorderRadius.circular(
        19.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL20 => BorderRadius.vertical(
        top: Radius.circular(20.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
        6.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
