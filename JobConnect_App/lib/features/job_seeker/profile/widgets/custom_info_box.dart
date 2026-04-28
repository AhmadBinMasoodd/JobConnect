import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class CustomInfoBox extends StatelessWidget {
  const CustomInfoBox({
    super.key,
    required this.child,
    this.icon = Icons.lightbulb_outline,
    this.iconColor = UColors.primaryColor, // Changed to primaryColor
  });

  final Widget child;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.md),
      width: double.infinity,
      decoration: BoxDecoration(
        color: UColors.veryLightBlue,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: UColors.lightBlue),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Centered vertically
        children: [
          Icon(
            icon,
            size: USizes.iconSm,
            color: iconColor,
          ),
          const SizedBox(width: USizes.defaultSpace),
          Expanded(child: child),
        ],
      ),
    );
  }
}
