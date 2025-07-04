import 'package:core_module/core/def/global_def.dart';
import 'package:core_module/core/extensions/int_extension.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

const double _wordSpacing = 1.5;
const double _height = 1.3;
const double _letterSpacing = 0.2;
const String _fontFamily = "SfUI";

///=================== L  I  G  H  T     M  O  D  E  =========================
///===========================================================================
TextStyle normalButtonLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontFamily: _fontFamily,
  fontWeight: FontWeight.w700,
  fontSize: 16.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.white,
);

TextStyle boldButtonLightModeStyle =
normalButtonLightModeStyle.copyWith(fontWeight: FontWeight.w900);

///Label Text
TextStyle labelSmallTextLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w200,
  fontFamily: _fontFamily,
  fontSize: 14.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.black87,
);

TextStyle labelMediumTextLightModeStyle =
labelSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w400);

TextStyle labelLargeTextLightModeStyle =
labelSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w900);

///Body Text
TextStyle bodySmallTextLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w200,
  fontFamily: _fontFamily,
  fontSize: 16.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.black87,
);

TextStyle bodyMediumTextLightModeStyle =
bodySmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w400);

TextStyle bodyLargeTextLightModeStyle =
bodySmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w900);

///Title text
TextStyle titleSmallTextLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w200,
  fontFamily: _fontFamily,
  fontSize: 28.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.black87,
);

TextStyle titleMediumTextLightModeStyle =
titleSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w400);

TextStyle titleLargeTextLightModeStyle =
titleSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w900);

///Display text
TextStyle displaySmallTextLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w200,
  fontFamily: _fontFamily,
  fontSize: 35.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.black87,
);

TextStyle displayMediumTextLightModeStyle =
displaySmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w400);

TextStyle displayLargeTextLightModeStyle =
displaySmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w900);

///Heading text
TextStyle headingSmallTextLightModeStyle = TextStyle(
  fontStyle: FontStyle.normal,
  fontWeight: FontWeight.w200,
  fontFamily: _fontFamily,
  fontSize: 50.dp(),
  wordSpacing: _wordSpacing,
  height: _height,
  letterSpacing: _letterSpacing,
  color: Colors.black87,
);
TextStyle headingMediumTextLightModeStyle =
headingSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w400);

TextStyle headingLargeTextLightModeStyle =
headingSmallTextLightModeStyle.copyWith(fontWeight: FontWeight.w900);
