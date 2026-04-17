import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';
import 'document_upload_container.dart';

/// Small reusable section for each required verification document.
class VerifyDocumentSection extends StatelessWidget {
  const VerifyDocumentSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonTitle,
    required this.buttonSubtitle,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String buttonTitle;
  final String buttonSubtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: USizes.xs),
        Text(
          subtitle,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: UColors.mutedTextColor,
                fontFamily: 'Arimo',
              ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        DocumentUploadContainer(
          title: buttonTitle,
          subtitle: buttonSubtitle,
          onTap: onTap,
        ),
      ],
    );
  }
}

