import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.prefixIconColor = const Color(0xFF6B7280),
    this.controller,
    this.validator,
  });

  final String label;
  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w600,
              ),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: UColors.gray,
                  fontFamily: 'Arimo',
                ),
            prefixIcon: Icon(
              prefixIcon,
              color: prefixIconColor,
              size: USizes.iconMd,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.lightGray,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.lightGray,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
              borderSide: const BorderSide(
                color: UColors.primaryColor,
                width: 1.5,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: USizes.md,
              vertical: USizes.sm,
            ),
          ),
        ),
      ],
    );
  }
}

