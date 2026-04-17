import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';
import '../controller/details_about_controller.dart';

class CustomRichTextField extends StatelessWidget {
  const CustomRichTextField({
    super.key,
    required this.controller,
  });

  final DetailsAboutController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller.aboutController,
      maxLines: 4,
      inputFormatters: [
        LengthLimitingTextInputFormatter(500),
      ],
      decoration: InputDecoration(
        hintText: 'Write about your company (0-500 characters)',
        hintStyle:
        Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: UColors.gray,
          fontFamily: 'Arimo',
        ),
        border: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(USizes.cardRadiusMd),
          borderSide: const BorderSide(
            color: UColors.lightGray,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(USizes.cardRadiusMd),
          borderSide: const BorderSide(
            color: UColors.lightGray,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(USizes.cardRadiusMd),
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
    );
  }
}
