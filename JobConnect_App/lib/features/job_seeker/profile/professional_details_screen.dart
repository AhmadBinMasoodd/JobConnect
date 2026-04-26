import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_icon_action_button.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/custom_rich_text_field.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_screen_header.dart';

import '../../../common/widgets/textfields/custom_text_field.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/title/custom_title.dart';

class ProfessionalDetailsScreen extends StatelessWidget {
  const ProfessionalDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = UDeviceHelpers.getScreenHeight(context);
    final screenWidth = UDeviceHelpers.getScreenWidth(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Step 2 of 5',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
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
                  CustomProgressHeader(progress: 0.33),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                children: [
                  CustomMetricTitle(
                    title: 'Professional Details',
                    subtitle: 'Tell us about your professional background',
                    icon: Icon(
                      Icons.card_travel,
                      color: UColors.primaryColor,
                      size: USizes.iconMd,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                  // Add form fields for professional details here
                  CustomTextField(label: 'Professional Title',hintText: 'e.g. Senior full stack developer', prefixIcon: Icons.title_outlined),
                  const SizedBox(height: USizes.spaceBtwInputFields),
                  CustomTextField(label: 'Years of Experience',hintText: 'e.g. 5 years', prefixIcon: Icons.work_outline),
                  const SizedBox(height: USizes.spaceBtwInputFields),

                  const SizedBox(height: USizes.spaceBtwSections),

                  SizedBox(height: 150,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: CustomIconActionButton(title: 'Continue', icon: Icons.arrow_forward, onPressed: ()=>{}),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
