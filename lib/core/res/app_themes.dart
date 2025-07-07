import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_styles.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    labelSmall: labelSmallTextLightModeStyle,
    labelMedium: labelMediumTextLightModeStyle,
    labelLarge: labelLargeTextLightModeStyle,
    //
    bodySmall: bodySmallTextLightModeStyle,
    bodyLarge: bodyLargeTextLightModeStyle,
    bodyMedium: bodyMediumTextLightModeStyle,

    displayLarge: displayLargeTextLightModeStyle,
    displayMedium: displayMediumTextLightModeStyle,
    displaySmall: displaySmallTextLightModeStyle,
    //
    headlineLarge: headingLargeTextLightModeStyle,
    headlineMedium: headingMediumTextLightModeStyle,
    headlineSmall: headingSmallTextLightModeStyle,
    //
    titleLarge: titleLargeTextLightModeStyle,
    titleMedium: titleMediumTextLightModeStyle,
    titleSmall: titleSmallTextLightModeStyle,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 5.0,
      backgroundColor: primaryColor,
      textStyle: normalButtonLightModeStyle,
      disabledForegroundColor: primaryFadedColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(40),
          right: Radius.circular(40),
        ),
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 5.0,
      backgroundColor: primaryColor,
      textStyle: normalButtonLightModeStyle,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(18),
          right: Radius.circular(18),
        ),
      ),
    ),
  ),
  colorScheme: ColorScheme.light(
    brightness: Brightness.light,

    ///primary colors and inverted color
    primary: primaryColor,
    primaryFixed: primaryFadedColor,
    // inversePrimary: greenFaded,
    // //
    // onPrimary: secondaryGreenColor,
    // primaryContainer: orangeQuadColor,
    // primaryFixedDim: primaryGreenColorDeep,
    // primaryFixed: orangeFadeColor,
    // onPrimaryContainer: disabledGreenColor,

    ///Secondary colors
    secondary: greyColor,
    // onSecondary: greySecondaryColor,
    // secondaryContainer: greyTertiaryColor,

    ///Tertiary colors
    tertiary: whiteColor,
    // tertiaryContainer: greyPrimaryColor,

    ///Error
    error: errorColor,

    ///Surface
    surface: whiteColor,
    // onSurface: darkColor,
    surfaceBright: darkBrightColor,
    // surfaceContainerHighest: greyTertiaryColor,
    // surfaceContainerLow: dividerColor,

    ///Inverse surface
    inverseSurface: darkColor,

    ///Green color
    outline: greyColor,
    surfaceDim: greyColor,
  ),
  dialogTheme: DialogThemeData(backgroundColor: whiteColor),
);
