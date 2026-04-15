import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({
    super.key,
    required this.label,
    required this.hintText,
    required this.prefixIcon,
    this.prefixIconColor = UColors.gray,
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
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  late bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w600,
              ),
        ),
        TextFormField(
          controller: widget.controller,
          validator: widget.validator,
          obscureText: _obscureText,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: UColors.gray,
                  fontFamily: 'Arimo',
                ),
            prefixIcon: Icon(
              widget.prefixIcon,
              color: widget.prefixIconColor,
              size: USizes.iconMd,
            ),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _obscureText = !_obscureText;
                });
              },
              icon: Icon(
                _obscureText
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: UColors.gray,
                size: USizes.iconMd,
              ),
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

