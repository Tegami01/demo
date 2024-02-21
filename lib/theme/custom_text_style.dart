import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBlack900Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeBlack900Regular => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeBlack900_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get bodyLargeCyan400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.cyan400,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeCyan40001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.cyan40001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeCyanA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.cyanA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeGray500 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray500,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeGray50001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray50001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray60001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray60001,
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray70001Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray700Light => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeGray700_1 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeGray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeLightgreenA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.lightGreenA700,
        fontSize: 18.fSize,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular_1 => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium13_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMedium14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium14_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumBlack900Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900Regular13 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlack900Regular14 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumBlue600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue600,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumBlue60001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue60001,
        fontSize: 14.fSize,
      );
  static get bodyMediumBlue60002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue60002,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumCyan400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyan400,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumCyan900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.cyan900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray70001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
      );
  static get bodyMediumGray70001Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray70001Light15 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70001,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray70014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray70015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
      );
  static get bodyMediumGray700Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray700Light15 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumGray700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray90002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumGray90014 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 14.fSize,
      );
  static get bodyMediumGray900Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumHelveticaNeueWhiteA700 =>
      theme.textTheme.bodyMedium!.helveticaNeue.copyWith(
        color: appTheme.whiteA700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumInter => theme.textTheme.bodyMedium!.inter;
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLight13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLight13_1 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumLight_1 => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular14 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular_1 => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular_2 => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA70013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA70015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700Light => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumWhiteA700Light13 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumWhiteA700Regular => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack900Light => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallCyan400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyan400,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallCyanA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.cyanA700,
        fontSize: 12.fSize,
      );
  static get bodySmallGray60002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray60002,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray90001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90001,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
      );
  // Headline text style
  static get headlineLargeMedium => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get headlineMediumGreen400 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.green400,
      );
  static get headlineMediumRedA200 => theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.redA200,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w800,
      );
  static get headlineMediumRedA200Medium =>
      theme.textTheme.headlineMedium!.copyWith(
        color: appTheme.redA200,
        fontSize: 26.fSize,
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeGray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
      );
  static get titleLargeBlue600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue600,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlue60001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue60001,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get titleLargeGreen400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green400,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack90001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBlack900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumCyan400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.cyan400,
        fontSize: 18.fSize,
      );
  static get titleMediumRed600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red600,
      );
  static get titleMediumRed800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumRed800ExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red800,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumRedA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA200,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 15.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallBlack90015 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 15.fSize,
      );
  static get titleSmallBluegray40002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray40002,
        fontSize: 15.fSize,
      );
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  static get titleSmallGray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallWhiteA700_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get helveticaNeue {
    return copyWith(
      fontFamily: 'Helvetica Neue',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
