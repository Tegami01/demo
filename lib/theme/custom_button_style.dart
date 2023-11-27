import 'dart:ui';
import 'package:demo/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillCyan => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan400.withOpacity(0.15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
              25.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillCyanLR25 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.cyan400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            right: Radius.circular(
              25.h,
            ),
          ),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get fillRedA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.redA200,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(3.h),
        ),
      );
  static ButtonStyle get fillWhiteATL12 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700.withOpacity(0.7),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
