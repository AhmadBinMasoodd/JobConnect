import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../../../../common/widgets/textfields/custom_text_field.dart';
import '../../../../core/constant/size.dart';

class LocationFormSection extends StatelessWidget {
  const LocationFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const CustomTextField(
          label: 'Street Address',
          hintText: '123 Business Street',
          prefixIcon: Iconsax.location,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Row(
          children: const [
            Expanded(
              child: CustomTextField(
                label: 'City',
                hintText: 'Lahore',
                prefixIcon: Iconsax.building_3,
              ),
            ),
            SizedBox(width: USizes.spaceBtwItems),
            Expanded(
              child: CustomTextField(
                label: 'State / Province',
                hintText: 'Punjab',
                prefixIcon: Iconsax.flag,
              ),
            ),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Row(
          children: const [
            Expanded(
              child: CustomTextField(
                label: 'Country',
                hintText: 'Pakistan',
                prefixIcon: Iconsax.global,
              ),
            ),
            SizedBox(width: USizes.spaceBtwItems),
            Expanded(
              child: CustomTextField(
                label: 'Zip / Postal Code',
                hintText: '94105',
                prefixIcon: Iconsax.hashtag,
              ),
            ),
          ],
        ),
        const SizedBox(height: USizes.spaceBtwSections),
        Text(
          'Contact Information',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontFamily: 'Arimo',
              ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: 'Phone Number',
          hintText: '+92 300 1234567',
          prefixIcon: Iconsax.call,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: 'Company Email',
          hintText: 'a@gmail.com',
          prefixIcon: Iconsax.sms,
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        const CustomTextField(
          label: 'Website (Optional)',
          hintText: 'www.company.com',
          prefixIcon: Iconsax.global,
        ),
      ],
    );
  }
}

