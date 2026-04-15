import 'package:flutter/material.dart';

import 'colors.dart';

class UAppGradient {
  UAppGradient._();

  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.secondaryColor,
      UColors.secondaryColorDark,
    ],
  );

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      UColors.primaryColor,
      UColors.primaryColorDark,
    ],
  );
}