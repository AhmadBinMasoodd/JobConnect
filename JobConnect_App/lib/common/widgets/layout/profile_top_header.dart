import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

/// Reusable top header for profile-related screens.
/// Use this when only the icon/title/subtitle changes.
class ProfileTopHeader extends StatelessWidget {
  const ProfileTopHeader({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.iconColor = UColors.white,
    this.titleColor = UColors.white,
    this.subtitleColor,
    this.iconSize = USizes.iconLg,
    this.iconPadding = const EdgeInsets.all(USizes.sm),
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;
  final Color titleColor;
  final Color? subtitleColor;
  final double iconSize;
  final EdgeInsetsGeometry iconPadding;

  @override
  Widget build(BuildContext context) {
    final Color effectiveSubtitleColor =
        subtitleColor ?? UColors.white.withValues(alpha: 0.8);

    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: iconPadding,
            child: Icon(
              icon,
              color: iconColor,
              size: iconSize,
            ),
          ),
          const SizedBox(width: USizes.sm),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: titleColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: effectiveSubtitleColor,
                    fontFamily: 'Arimo',
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

