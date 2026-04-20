import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class ProfileVerificationTile extends StatelessWidget {
  const ProfileVerificationTile({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(USizes.sm),
      decoration: BoxDecoration(
        color: UColors.success.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
        border: Border.all(color: UColors.success),
      ),
      child: Row(
        children: [
          Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: UColors.success,
              borderRadius: BorderRadius.circular(USizes.borderRadiusSm),
            ),
            child: const Icon(
              Icons.description_outlined,
              color: UColors.green,
              size: USizes.iconSm,
            ),
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(height: 2),
                Text(
                  status,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: UColors.green,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

