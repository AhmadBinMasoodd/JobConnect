import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/features/job_seeker/profile/controllers/work_experience_controller.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_info_box.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_screen_header.dart';

import '../../../common/widgets/buttons/custom_icon_action_button.dart';
import '../../../core/constant/app_gradient.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/title/custom_title.dart';

class WorkExperienceScreen extends StatelessWidget {
  const WorkExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(WorkExperienceController());
    final screenHeight = UDeviceHelpers.getScreenHeight(context);
    final screenWidth = UDeviceHelpers.getScreenWidth(context);

    // Responsive header height logic
    double headerHeight;
    if (screenHeight < 700) {
      headerHeight = 100;
    } else if (screenHeight < 800) {
      headerHeight = 120;
    } else {
      headerHeight = screenHeight * 0.15;
    }

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Step 4 of 5',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontFamily: 'Arimo',
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomScreenHeader(
                height: headerHeight,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomTitle(title: 'Complete Your Profile'),
                    SizedBox(height: USizes.spaceBtwItems),
                    CustomProgressHeader(progress: 0.67),
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
                      title: 'Work Experience',
                      subtitle: 'Share your work history',
                      icon: Icon(
                        Icons.card_travel_sharp,
                        color: UColors.primaryColor,
                        size: screenWidth * 0.08,
                      ),
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Do you have the work experience?',
                          style: Theme.of(context).textTheme.bodyMedium!
                              .copyWith(
                                color: UColors.mutedColorDark,
                                fontFamily: 'Arimo',
                                fontWeight: FontWeight.w600,
                                fontSize:
                                    screenWidth * 0.035, // Responsive title
                              ),
                        ),
                        const SizedBox(height: USizes.spaceBtwItems),
                        Obx(
                          () => Row(
                            children: [
                              Expanded(
                                child: _buildExperienceCard(
                                  context: context,
                                  title: 'Yes',
                                  isSelected:
                                      controller.hasExperience.value == true,
                                  onTap: () => controller.setExperience(true),
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                ),
                              ),
                              const SizedBox(width: USizes.spaceBtwItems),
                              Expanded(
                                child: _buildExperienceCard(
                                  context: context,
                                  title: 'No Experience',
                                  isSelected:
                                      controller.hasExperience.value == false,
                                  onTap: () => controller.setExperience(false),
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    Obx(() {
                      if (controller.hasExperience.value == false) {
                        return CustomInfoBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'No worries! everyone starts somewhere',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge!
                                    .copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontSize: screenWidth * 0.035,
                                      // Responsive font
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Focus on highlighting your skills and what you can bring to potential employers',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.labelLarge!
                                    .copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontSize:
                                          screenWidth *
                                          0.032, // Responsive font
                                    ),
                              ),
                            ],
                          ),
                        );
                      }
                      if (controller.hasExperience.value == true) {
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
                      return const SizedBox.shrink();
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: CustomIconActionButton(
          title: 'Continue',
          icon: Icons.arrow_forward,
          onPressed: () {
            // Navigation logic here
          },
          gradient: UAppGradient.primaryGradientOpacity,
        ),
      ),
    );
  }

  Widget _buildExperienceCard({
    required BuildContext context,
    required String title,
    required bool isSelected,
    required VoidCallback onTap,
    required double screenWidth,
    required double screenHeight,
  }) {
    // Determine card height based on screen size
    double cardHeight = screenHeight * 0.12;
    if (screenHeight < 700) cardHeight = 90;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(USizes.md),
        height: cardHeight,
        decoration: BoxDecoration(
          color: UColors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: isSelected ? UColors.primaryColor : UColors.lightGray,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Icon(
                isSelected ? Icons.check_circle : Icons.check_circle_outline,
                color: isSelected ? UColors.primaryColor : UColors.lightGray,
                size: screenWidth * 0.06, // Responsive icon size
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: isSelected
                      ? UColors.primaryColor
                      : UColors.mutedColorDark,
                  fontFamily: 'Arimo',
                  fontSize: screenWidth * 0.035, // Responsive font size
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
