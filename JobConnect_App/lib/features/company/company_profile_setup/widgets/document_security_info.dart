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
  });

  final String title;
  final String subtitle;
  final IconData icon;

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
                border: Border.all(
                  color: UColors.green,
                  width: 2.5,
                ),
              ),
              child: Icon(
                icon,
                color: UColors.green,
                size: 16,
              ),
            ),
            const SizedBox(width: USizes.sm),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColor,
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
                  color: UColors.mutedTextColor,
                  fontFamily: 'Arimo',
                ),
          ),
        ),
      ],
    );
  }
}

