import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';

class FindFilterChip extends StatelessWidget {
  const FindFilterChip({
    super.key,
    required this.label,
    required this.isSelected,
  });

  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? UColors.white : UColors.primaryColorDark,
        borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
        border: Border.all(color: UColors.white.withValues(alpha: 0.15)),
      ),
      child: Text(
        label,
        style: Theme.of(context).textTheme.bodySmall?.copyWith(
          color: isSelected ? UColors.primaryColor : UColors.white,
          fontFamily: 'Arimo',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

