import 'package:flutter/material.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

/// Tile widget displaying verification status with approval badge
/// Shows document/certificate name, status, and approval indicator
class VerificationStatusTile extends StatelessWidget {
  const VerificationStatusTile({
    required this.title,
    required this.status,
  });

  /// Name of the document being verified
  final String title;

  /// Verification status (e.g., "Verified", "Pending")
  final String status;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Document title and status
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColor,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w500,
                    ),
              ),
              const SizedBox(height: USizes.xs),
              Text(
                status,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: UColors.green,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        // Approval badge
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: USizes.sm,
            vertical: 4,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFFE9F9EE),
            borderRadius: BorderRadius.circular(USizes.cardRadiusXs),
          ),
          child: Text(
            'Approved',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  color: UColors.green,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ],
    );
  }
}

