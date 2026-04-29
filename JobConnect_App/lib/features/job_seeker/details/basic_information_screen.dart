import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';
import 'package:jobconnect_app/features/job_seeker/common/appbar/custom_app_bar.dart';
import 'package:jobconnect_app/features/job_seeker/common/title/custom_title.dart';
import 'package:jobconnect_app/features/job_seeker/details/professional_details_screen.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_screen_header.dart';

import '../../../common/widgets/buttons/custom_icon_action_button.dart';
import '../../../core/constant/app_gradient.dart';
import '../../../core/constant/size.dart';

class BasicInformationScreen extends StatelessWidget {
  const BasicInformationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = UDeviceHelpers.getScreenHeight(context);
    final screenWidth = UDeviceHelpers.getScreenWidth(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Step 1 of 5',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: UColors.white,
                fontFamily: 'Arimo',
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomScreenHeader(
              height: screenHeight * 0.18,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomTitle(title: 'Complete Your Profile'),
                  const SizedBox(height: USizes.spaceBtwItems),
                  CustomProgressHeader(progress: 0.17),
                ],
              ),
            ),
            const SizedBox(height: USizes.spaceBtwItems),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                children: [
                  CustomMetricTitle(
                    title: 'Basic Information',
                    subtitle: 'Let\'s start with your personal details',
                    icon: Icon(
                      Iconsax.user,
                      color: UColors.primaryColor,
                      size: screenWidth * 0.08,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                  CustomTextField(
                    label: 'Full Name',
                    hintText: 'John Doe',
                    prefixIcon: Icons.person,
                  ),
                  const SizedBox(height: USizes.spaceBtwInputFields),
                  CustomTextField(
                    label: 'Email',
                    hintText: 'John@example.com',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(height: USizes.spaceBtwInputFields),
                  CustomTextField(
                    label: 'Phone Number',
                    hintText: '+1 234 567 890',
                    prefixIcon: Icons.phone,
                  ),
                  const SizedBox(height: USizes.spaceBtwInputFields),
                  CustomTextField(
                    label: 'Location',
                    hintText: 'New York,USA',
                    prefixIcon: Icons.location_on,
                  ),
                ],
              ),
            ),
            const SizedBox(height: USizes.spaceBtwSections),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: CustomIconActionButton(
          title: 'Continue',
          icon: Icons.arrow_forward,
          onPressed: () => Get.to(() => const ProfessionalDetailsScreen()),
          gradient: UAppGradient.primaryGradientOpacity,
        ),
      ),
    );
  }
}

