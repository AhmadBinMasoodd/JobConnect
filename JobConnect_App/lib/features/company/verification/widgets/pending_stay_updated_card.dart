import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class PendingStayUpdatedCard extends StatelessWidget {
  const PendingStayUpdatedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.80),
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
            ),
            child: const Icon(
              Icons.notifications_none,
              color: UColors.primaryColor,
              size: USizes.iconMd,
            ),
          ),
          const SizedBox(width: USizes.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  UText.stayUpdatedTitle,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: UColors.primaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: USizes.xs),
                Text(
                  UText.stayUpdatedSubtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: UColors.mutedTextColor,
                    fontFamily: 'Arimo',
                  ),
                ),
                const SizedBox(height: USizes.sm),
                Row(
                  children: [
                    Icon(
                      Icons.mail_outline,
                      size: USizes.iconSm,
                      color: UColors.gray.withValues(alpha: 0.8),
                    ),
                    const SizedBox(width: USizes.sm),
                    Text(
                      UText.supportEmail,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.mutedTextColor,
                        fontFamily: 'Arimo',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
