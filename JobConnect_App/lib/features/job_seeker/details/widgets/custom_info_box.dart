import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class CustomInfoBox extends StatelessWidget {
  const CustomInfoBox({
    super.key,
    required this.child,
    this.icon = Icons.lightbulb_outline,
    this.iconColor = UColors.primaryColor,
    this.backgroundColor = UColors.veryLightBlue,
    this.borderColor = UColors.lightBlue,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final Widget child;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final Color borderColor;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.md),
      width: double.infinity,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: borderColor),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: crossAxisAlignment,
        children: [
          Icon(
            icon,
            size: USizes.iconSm,
            color: iconColor,
          ),
          const SizedBox(width: USizes.md),
          Expanded(child: child),
        ],
      ),
    );
  }
}
