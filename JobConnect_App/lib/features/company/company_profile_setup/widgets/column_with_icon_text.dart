import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class ColumnWIthIconText extends StatelessWidget {
  const ColumnWIthIconText({
    super.key,
    required this.text,
    this.icon = Iconsax.info_circle,
    this.iconColor = UColors.primaryColor,
    this.textColor = UColors.primaryColor,
    this.backgroundColor,
  });

  final String text;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: backgroundColor ?? UColors.primaryColor.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: USizes.iconMd,
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: textColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

