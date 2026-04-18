import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class DashboardStatCard extends StatelessWidget {
  const DashboardStatCard({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    required this.footer,
    required this.footerColor,
  });

  final IconData icon;
  final String title;
  final String value;
  final String footer;
  final Color footerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: UColors.lightGray.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
            ),
            child: Icon(icon, size: USizes.iconSm, color: UColors.primaryColor),
          ),
          const SizedBox(height: USizes.sm),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: UColors.gray,
              fontFamily: 'Arimo',
            ),
          ),
          const SizedBox(height: USizes.xs),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: USizes.xs),
          Text(
            footer,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: footerColor,
              fontFamily: 'Arimo',
            ),
          ),
        ],
      ),
    );
  }
}
