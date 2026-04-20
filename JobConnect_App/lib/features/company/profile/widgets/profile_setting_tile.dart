import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class ProfileSettingTile extends StatelessWidget {
  const ProfileSettingTile({
    super.key,
    required this.icon,
    required this.title,
    this.trailingText,
    this.titleColor,
    this.trailingColor,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String? trailingText;
  final Color? titleColor;
  final Color? trailingColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(USizes.borderRadiusMd),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: USizes.sm),
        child: Row(
          children: [
            Icon(
              icon,
              size: USizes.iconSm,
              color: titleColor ?? UColors.gray,
            ),
            const SizedBox(width: USizes.sm),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: titleColor ?? UColors.primaryColor,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            if (trailingText != null)
              Text(
                trailingText!,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: trailingColor ?? UColors.gray,
                      fontFamily: 'Arimo',
                    ),
              ),
            const SizedBox(width: USizes.xs),
            Icon(
              Icons.chevron_right,
              size: USizes.iconSm,
              color: trailingColor ?? UColors.gray,
            ),
          ],
        ),
      ),
    );
  }
}

