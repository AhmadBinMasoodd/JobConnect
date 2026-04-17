import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class VerifyWarningBanner extends StatelessWidget {
  const VerifyWarningBanner({
    super.key,
    required this.message,
    this.icon = Iconsax.warning_2,
    this.iconColor = UColors.primaryColor,
    this.textColor = UColors.primaryColor,
    this.backgroundColor = UColors.warningSurfaceBackground,
    this.borderColor = UColors.warningSurfaceBorder,
  });

  final String message;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
        border: Border.all(color: borderColor),
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
              message,
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

