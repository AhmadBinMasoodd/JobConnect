import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';

class UAppBar extends StatelessWidget implements PreferredSize {
  const UAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.onLeadingPressed,
    this.actions,
    this.backArrowIcon = Icons.arrow_back,
    this.backArrowSize = 20,
    this.backArrowColor = UColors.white,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;
  final List<Widget>? actions;
  final IconData backArrowIcon;
  final double backArrowSize;
  final Color backArrowColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: showBackArrow || leadingIcon != null,
      backgroundColor: UColors.primaryColor,
      title: title,
      centerTitle: true,
      leading: showBackArrow
          ? IconButton(
              onPressed: onLeadingPressed ?? () => Get.back(),
              icon: Icon(
                backArrowIcon,
                size: backArrowSize,
                color: backArrowColor,
              ),
            )
          : leadingIcon != null
              ? IconButton(
                  onPressed: onLeadingPressed,
                  icon: Icon(leadingIcon, color: UColors.white),
                )
              : null,
      actions: actions,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelpers.getAppBarHeight());
}
