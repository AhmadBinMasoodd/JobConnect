import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class DocumentSecurityInfo extends StatelessWidget {
  const DocumentSecurityInfo({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Iconsax.shield_tick,
    this.iconColor = UColors.green,
    this.titleColor = UColors.primaryColor,
    this.subtitleColor = UColors.mutedTextColor,
    this.iconBackgroundColor,
    this.iconBorderColor = UColors.green,
    this.iconBorderWidth = 2.5,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color iconColor;
  final Color titleColor;
  final Color subtitleColor;
  final Color? iconBackgroundColor;
  final Color? iconBorderColor;
  final double iconBorderWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: iconBackgroundColor,
                border: iconBorderColor == null
                    ? null
                    : Border.all(
                        color: iconBorderColor!,
                        width: iconBorderWidth,
                      ),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 16,
              ),
            ),
            const SizedBox(width: USizes.sm),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: titleColor,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
        ),
        const SizedBox(height: USizes.xs),
        Padding(
          padding: const EdgeInsets.only(left: 36),
          child: Text(
            subtitle,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: subtitleColor,
                  fontFamily: 'Arimo',
                ),
          ),
        ),
      ],
    );
  }
}

