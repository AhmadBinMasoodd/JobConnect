import 'package:flutter/material.dart';
import '../../../../core/constant/colors.dart';

/// A styled chip widget for displaying department tags
/// Used in the departments section of company profile
class DepartmentChip extends StatelessWidget {
  const DepartmentChip(this.label);

  /// The department name to display
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 6,
      ),
      decoration: BoxDecoration(
        color: UColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
              color: UColors.white,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

