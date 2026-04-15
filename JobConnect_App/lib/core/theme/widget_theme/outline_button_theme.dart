import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';

import '../../constant/size.dart';


class UOutlineButtonTheme {
  UOutlineButtonTheme._();

  static final lightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: UColors.black,
      padding: const EdgeInsets.symmetric(vertical: USizes.buttonHeight, horizontal: 20),
      textStyle: const TextStyle(fontSize: 16, color: UColors.black,fontWeight: FontWeight.w600),
    ),
  );
}