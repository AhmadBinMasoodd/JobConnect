import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/document_security_info.dart';

class PendingVerificationTimelineCard extends StatelessWidget {
  const PendingVerificationTimelineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: USizes.md,
              vertical: USizes.sm,
            ),
            decoration: BoxDecoration(
              color: UColors.secondaryColor.withValues(alpha: 0.30),
              borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.circle,
                  size: USizes.iconXs,
                  color: UColors.secondaryColor,
                ),
                const SizedBox(width: USizes.sm),
                Text(
                  UText.pendingApproval,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                    color: UColors.secondaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: USizes.lg),
          Container(
            padding: const EdgeInsets.all(USizes.md),
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
            ),
            child: const DocumentSecurityInfo(
              title: UText.documentReceivedTitle,
              subtitle: UText.documentReceivedSubtitle,
              icon: Icons.check,
            ),
          ),
          const SizedBox(height: USizes.md),
          Container(
            padding: const EdgeInsets.all(USizes.md),
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
            ),
            child: const DocumentSecurityInfo(
              title: UText.underVerificationTitle,
              subtitle: UText.underVerificationSubtitle,
              icon: Icons.assignment_turned_in_outlined,
              iconColor: UColors.verificationInfoIcon,
              iconBackgroundColor: UColors.verificationInfoSurface,
              iconBorderColor: null,
            ),
          ),
          const SizedBox(height: USizes.md),
          Container(
            padding: const EdgeInsets.all(USizes.md),
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.35),
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
            ),
            child: DocumentSecurityInfo(
              title: UText.finalDecisionTitle,
              subtitle: UText.finalDecisionSubtitle,
              icon: Icons.check_circle_outline,
              iconColor: UColors.gray,
              iconBackgroundColor: UColors.gray.withValues(alpha: 0.12),
              iconBorderColor: UColors.gray.withValues(alpha: 0.35),
              titleColor: UColors.gray.withValues(alpha: 0.8),
              subtitleColor: UColors.gray.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }
}
