import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';

class CompanySizeDropdown extends StatelessWidget {
  const CompanySizeDropdown({
    super.key,
    required this.items,
    required this.value,
    required this.onChanged,
  });

  final List<String> items;
  final String value;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      icon: const Icon(Icons.keyboard_arrow_down_rounded, color: UColors.gray),
      decoration: InputDecoration(
        hintText: 'Select company size',
        hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: UColors.gray,
              fontFamily: 'Arimo',
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          borderSide: const BorderSide(color: UColors.lightGray, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          borderSide: const BorderSide(color: UColors.lightGray, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          borderSide: const BorderSide(color: UColors.primaryColor, width: 1.5),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: USizes.md,
          vertical: USizes.sm,
        ),
      ),
      items: items
          .map(
            (item) => DropdownMenuItem<String>(
              value: item,
              child: Text(
                item,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColor,
                      fontFamily: 'Arimo',
                    ),
              ),
            ),
          )
          .toList(),
      onChanged: onChanged,
    );
  }
}
