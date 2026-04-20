import 'package:flutter/material.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

/// Header card displayed at the top of the company profile
/// Shows company icon with title and subtitle
class CompanyDetailsHeaderCard extends StatelessWidget {
  const CompanyDetailsHeaderCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Company icon container
          Container(
            padding: const EdgeInsets.all(USizes.sm),
            child: const Icon(
              Icons.business_outlined,
              color: UColors.white,
              size: USizes.iconLg,
            ),
          ),
          const SizedBox(width: USizes.sm),
          // Title and subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Company Details',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: UColors.white,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'View your company information',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.white.withValues(alpha: 0.8),
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

