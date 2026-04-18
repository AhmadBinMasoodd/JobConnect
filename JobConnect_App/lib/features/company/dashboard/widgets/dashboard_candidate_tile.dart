import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class DashboardCandidateTile extends StatelessWidget {
  const DashboardCandidateTile({
    super.key,
    required this.initials,
    required this.name,
    required this.role,
    required this.rating,
  });

  final String initials;
  final String name;
  final String role;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: USizes.md,
        vertical: USizes.sm,
      ),
      decoration: BoxDecoration(
        color: UColors.lightGray.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      ),
      child: Row(
        children: [
          Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              color: UColors.secondaryColor,
              borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
            ),
            alignment: Alignment.center,
            child: Text(
              initials,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: UColors.primaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  role,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.gray,
                    fontFamily: 'Arimo',
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: USizes.sm,
              vertical: USizes.xs,
            ),
            decoration: BoxDecoration(
              color: UColors.white,
              borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
              border: Border.all(color: UColors.lightGray),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  color: UColors.secondaryColor,
                  size: USizes.iconXs,
                ),
                const SizedBox(width: USizes.xs),
                Text(
                  rating,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.primaryColor,
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
