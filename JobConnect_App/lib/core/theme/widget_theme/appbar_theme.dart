import 'package:flutter/material.dart';

import '../../constant/colors.dart' show UColors;
import '../../constant/size.dart';

class UAppBarTheme{
  UAppBarTheme._();

  static const lightAppBarTheme=AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    foregroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
    iconTheme: IconThemeData(color: UColors.white,size: USizes.iconMd),
    actionsIconTheme: IconThemeData(color: UColors.white,size: USizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: UColors.white),
  );
}