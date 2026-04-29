import 'package:flutter/material.dart';
import '../../../../../core/constant/colors.dart';
import '../../../../../core/constant/size.dart';

class UploadActionCard extends StatelessWidget {
  const UploadActionCard({
    super.key,
    required this.title,
    required this.icon,
    required this.onUploadPressed,
    this.subtitle,
  });

  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback onUploadPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(USizes.sm),
      decoration: BoxDecoration(
        color: UColors.softBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(USizes.sm / 2),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: UColors.primaryColor.withValues(alpha: 0.2),
              ),
            ),
            child: Icon(
              icon,
              color: UColors.primaryColor,
              size: 20,
            ),
          ),
          const SizedBox(width: USizes.spaceBtwItems),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: UColors.primaryColor,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Arimo',
                  ),
                ),
                if (subtitle != null && subtitle!.isNotEmpty)
                  Text(
                    subtitle!,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: UColors.gray,
                      fontFamily: 'Arimo',
                    ),
                  ),
              ],
            ),
          ),
          IconButton(
            onPressed: onUploadPressed,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            icon: const Icon(
              Icons.file_upload_outlined,
              color: UColors.gray,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
