import 'package:flutter/material.dart';

import 'colors.dart';

class UAppGradient {
  UAppGradient._();

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.primaryGradientStart,
      UColors.primaryGradientEnd,
    ],
  );

  static const LinearGradient verifyEmailSuccessGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.successGradientStart,
      UColors.successGradientEnd,
    ],
  );

  static const LinearGradient primaryBackgroundGradient = primaryGradient;
  static const LinearGradient successBackgroundGradient =
      verifyEmailSuccessGradient;

}