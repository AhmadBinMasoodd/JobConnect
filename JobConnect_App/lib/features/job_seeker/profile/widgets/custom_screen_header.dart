import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';

import '../../../../core/helpers/device_helpers.dart';

class CustomScreenHeader extends StatelessWidget {
   CustomScreenHeader({
    super.key,
    this.height,
    required this.child
  });

  final double? height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final resolvedHeight = height ?? UDeviceHelpers.getScreenHeight(context) * 0.3;
    return Container(
      decoration: BoxDecoration(
        gradient: UAppGradient.primaryGradient
      ),
      child: SafeArea(
        child: Container(
          padding: UPadding.screenPadding,
          height: resolvedHeight,
          width: double.infinity,
          child: child,
        ),
      ),
    );
  }
}
