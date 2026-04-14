import 'package:flutter/material.dart';

import 'colors.dart';

class UAppGradient {
  UAppGradient._();

  static const LinearGradient primaryBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.primaryColor,
      UColors.primaryColorDark,
    ],
  );

  static const LinearGradient successBackgroundGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.secondaryColor,
      UColors.secondaryColorDark,
    ],
  );

}