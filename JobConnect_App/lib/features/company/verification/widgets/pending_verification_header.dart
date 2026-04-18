import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class PendingVerificationHeader extends StatelessWidget {
  const PendingVerificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        USizes.lg,
        USizes.xl,
        USizes.lg,
        USizes.xl,
      ),
      decoration: const BoxDecoration(gradient: UAppGradient.primaryGradient),
      child: Column(
        children: [
          Container(
            width: 84,
            height: 84,
            decoration: BoxDecoration(
              color: UColors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: UColors.black.withValues(alpha: 0.12),
                  blurRadius: 16,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: const Icon(
              Icons.schedule,
              color: UColors.secondaryColor,
              size: 36,
            ),
          ),
          const SizedBox(height: USizes.lg),
          Text(
            UText.pendingVerificationTitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: UColors.white,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: USizes.sm),
          Text(
            UText.pendingVerificationSubtitle,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: UColors.white.withValues(alpha: 0.85),
              fontFamily: 'Arimo',
            ),
          ),
        ],
      ),
    );
  }
}
