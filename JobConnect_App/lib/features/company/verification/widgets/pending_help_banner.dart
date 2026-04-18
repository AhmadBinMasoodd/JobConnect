import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class PendingHelpBanner extends StatelessWidget {
  const PendingHelpBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: UColors.verificationInfoSurface.withValues(alpha: 0.35),
        border: Border.all(
          color: UColors.verificationInfoIcon.withValues(alpha: 0.25),
        ),
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.lightbulb_outline,
            color: UColors.secondaryColor,
            size: USizes.iconSm,
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Text(
              UText.pendingHelpMessage,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.mutedColorDark,
                fontFamily: 'Arimo',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
