import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UDeviceHelpers {
  UDeviceHelpers._();

  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: color),
    );
  }

  static double getBottomNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  static double getAppBarHeight() {
    return kTextTabBarHeight;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static bool isLandScapeOriented(BuildContext context) {
    final viewInsects = MediaQuery.of(context).viewInsets;
    return viewInsects.bottom == 0;
  }

  static bool isPortraitOriented(BuildContext context) {
    final viewInsects = MediaQuery.of(context).viewInsets;
    return viewInsects.bottom != 0;
  }

  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }
}
