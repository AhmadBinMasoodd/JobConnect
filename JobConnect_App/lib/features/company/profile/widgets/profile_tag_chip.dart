import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class ProfileTagChip extends StatelessWidget {
  const ProfileTagChip({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: USizes.sm,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: UColors.lightGray.withValues(alpha: 0.45),
        borderRadius: BorderRadius.circular(USizes.cardRadiusXs),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
      ),
    );
  }
}

