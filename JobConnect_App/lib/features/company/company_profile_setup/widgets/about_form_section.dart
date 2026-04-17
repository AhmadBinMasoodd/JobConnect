import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/textfields/custom_text_field.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';
import '../controller/details_about_controller.dart';
import 'custom_rich_text_field.dart';

class AboutFormSection extends StatelessWidget {
  const AboutFormSection({
    super.key,
    required this.controller,
  });

  final DetailsAboutController controller;

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomTextField(
          label: 'Company Name',
          hintText: 'e.g., TechCrop Inc...',
          prefixIcon: Iconsax.arrow,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: 'Industry',
          hintText: 'Enter your Industry',
          prefixIcon: Iconsax.arrow,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: 'Year Founded',
          hintText: 'e.g., 2010',
          prefixIcon: Iconsax.arrow,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Text(
          'Company Description',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: UColors.primaryColor,
                fontFamily: 'Arimo',
                fontWeight: FontWeight.w600,
              ),
        ),
        const SizedBox(height: USizes.xs),
        CustomRichTextField(controller: controller),
        const SizedBox(height: USizes.xs),
        Align(
          alignment: Alignment.centerRight,
          child: Obx(
            () => Text(
              '${controller.aboutLength.value}/500',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.gray,
                    fontFamily: 'Arimo',
                  ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final Widget content = _buildContent(context);

        // If parent gives fixed height, enable internal scroll to avoid overflow.
        if (constraints.hasBoundedHeight) {
          return SingleChildScrollView(child: content);
        }

        return content;
      },
    );
  }
}
