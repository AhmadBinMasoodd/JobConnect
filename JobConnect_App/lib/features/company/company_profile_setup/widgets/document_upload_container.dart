import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class DocumentUploadContainer extends StatelessWidget {
  const DocumentUploadContainer({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Iconsax.document_upload,
    this.backgroundColor = UColors.white,
    this.borderColor = UColors.documentPickerBorder,
    this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final Color backgroundColor;
  final Color borderColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(USizes.md),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          border: Border.all(color: borderColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: onTap,
              icon: Icon(
                icon,
                size: 34,
                color: UColors.primaryColor,
              ),
            ),
            const SizedBox(height: USizes.xs),
            Text(
              title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: UColors.primaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
            ),
            const SizedBox(height: USizes.xs),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.gray,
                    fontFamily: 'Arimo',
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
