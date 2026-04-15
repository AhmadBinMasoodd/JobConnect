import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
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
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        //automaticallyImplyLeading: false,
        backgroundColor: UColors.primaryColor,
        leading: showBackArrow
            ? IconButton(
                onPressed: onLeadingPressed,
                icon: Icon(Iconsax.arrow_left),
              )
            : leadingIcon != null
            ? IconButton(onPressed: onLeadingPressed, icon: Icon(leadingIcon))
            : null,
        actions: actions,
      );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(UDeviceHelpers.getAppBarHeight());
}
