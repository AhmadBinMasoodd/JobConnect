import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
                    const CustomMetricTitle(
                      title: 'Work Experience',
                      subtitle: 'Share your work history',
                      icon: Icon(
                        Icons.card_travel_sharp,
                        color: UColors.primaryColor,
                        size: USizes.iconMd,
                      ),
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Do you have the work experience?',
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                color: UColors.mutedColorDark,
                                fontFamily: 'Arimo',
                                fontWeight: FontWeight.w600,
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
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'focus on highlighting your skills and what you can bring to potential employers',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                    ),
                              ),
                            ],
                          ),
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
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(USizes.md),
        height: 100,
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
              alignment: Alignment.topCenter, // Icon moved to the top-middle
              child: Icon(
                isSelected ? Icons.check_circle : Icons.check_circle_outline,
                color: isSelected ? UColors.primaryColor : UColors.lightGray,
                size: 24,
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
                      fontWeight:
                          isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
