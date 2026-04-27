import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/core/constant/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.centerTitle = false,
    this.showBackArrow = false,
  });

  final Widget? title;
  final bool centerTitle;
  final bool showBackArrow;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,
      backgroundColor: UColors.primaryColor,
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () {
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                } else {
                  Get.back();
                }
              },
              icon: const Icon(Icons.arrow_back, color: UColors.white),
            )
          : null,
    );
  }
}
