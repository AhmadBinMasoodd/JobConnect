import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../core/constant/app_gradient.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../icons/GradientIconBox.dart';

class URoleActionCard extends StatelessWidget {
  const URoleActionCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    this.gradient,  // Made optional with default value below
  });

  final Icon icon;
  final Gradient? gradient;  // Made nullable
  final String title;
  final String subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: USizes.md,
        vertical: USizes.sm,
      ),
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
        border: Border.all(color: UColors.lightGray),
        boxShadow: [
          BoxShadow(
            color: UColors.black.withValues(alpha: 0.05),
            blurRadius: 14,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: Row(
        children: [
          UGradientIconBox(
            size: USizes.iconXs * 4,
            icon: icon,
            gradient: gradient ?? UAppGradient.secondaryGradient, // Use provided or default
          ),
          const SizedBox(width: USizes.spaceBtwItems),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: UColors.primaryColor,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.mutedTextColor,

                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: UColors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: IconButton(
              onPressed:onPressed,
              icon: Icon(Iconsax.arrow_right,color: UColors.primaryColor,),
              iconSize: USizes.iconLg,
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
          )
        ],
      ),
    );
  }
}