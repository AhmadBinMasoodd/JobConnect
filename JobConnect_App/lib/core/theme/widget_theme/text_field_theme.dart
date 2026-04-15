import 'package:flutter/material.dart';

import '../../constant/colors.dart';
import '../../constant/size.dart';

class UTextFormFieldTheme {
  UTextFormFieldTheme._();

  static final InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: UColors.gray,
    suffixIconColor: UColors.gray,
    labelStyle: TextStyle(color: UColors.gray, fontSize: USizes.fontSizeMd),
    hintStyle: TextStyle(fontSize: USizes.fontSizeSm, color: UColors.gray),
    errorStyle: TextStyle(fontStyle: FontStyle.normal),
    floatingLabelStyle: TextStyle(color: UColors.black.withOpacity(0.8),
        fontSize: USizes.fontSizeMd),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(USizes.inputFieldRadius),
      borderSide:BorderSide(width: 1,color: UColors.white)
    ),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(USizes.inputFieldRadius),
        borderSide:BorderSide(width: 1,color: UColors.white)
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(USizes.inputFieldRadius),
        borderSide:BorderSide(width: 1,color: UColors.primaryColor)
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(USizes.inputFieldRadius),
        borderSide:BorderSide(width: 1,color: UColors.warning)
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(USizes.inputFieldRadius),
        borderSide:BorderSide(width: 1,color: UColors.warning)
    ),
  );
}