import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';

import '../../constant/size.dart';

class UElevatedButtonTheme{
  UElevatedButtonTheme._();

  static  ElevatedButtonThemeData lightElevatedButtonTheme=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: UColors.primaryColor,
      foregroundColor: UColors.white,
      disabledBackgroundColor: UColors.secondaryColor,
      disabledForegroundColor: UColors.white.withOpacity(0.6),
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight),
      textStyle: TextStyle(fontSize: 16,color: UColors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}