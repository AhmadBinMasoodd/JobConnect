import 'package:flutter/material.dart';

import '../../../../common/widgets/cards/shadow_box.dart';
import '../../../../common/widgets/textfields/custom_text_field.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/size.dart';
class ExperienceDetails extends StatelessWidget {
  const ExperienceDetails({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadowBox(
          child: Column(
            children: [
              Text(
                'Current Position',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(
                  color: UColors.primaryColor,
                  fontFamily: 'Arimo',
                  fontSize: screenWidth * 0.035,
                  // Responsive font
                  fontWeight: FontWeight.bold,
                ),
              ),

              CustomTextField(
                label: 'Company Name',
                hintText: 'TechCrop Inc.',
                prefixIcon: Icons.perm_identity,
              ),
              SizedBox(height: USizes.spaceBtwInputFields,),
              CustomTextField(
                label: 'Role/Position',
                hintText: 'Previous Role.',
                prefixIcon: Icons.real_estate_agent,
              ),
            ],
          ),
        ),
        SizedBox(height: USizes.spaceBtwSections),
        ShadowBox(
          child: Column(
            children: [
              Text(
                'Previous Position (Optional)',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(
                  color: UColors.primaryColor,
                  fontFamily: 'Arimo',
                  fontSize: screenWidth * 0.035,
                  // Responsive font
                  fontWeight: FontWeight.bold,
                ),
              ),

              CustomTextField(
                label: 'Company Name',
                hintText: 'TechCrop Inc.',
                prefixIcon: Icons.perm_identity,
              ),
              SizedBox(height: USizes.spaceBtwInputFields,),

              CustomTextField(
                label: 'Role/Position',
                hintText: 'Previous Role.',
                prefixIcon: Icons.real_estate_agent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
