import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/job_seeker_navigation_menu.dart';
import 'package:jobconnect_app/features/job_seeker/home/controller/job_seeker_navigation_controller.dart';
import 'package:jobconnect_app/features/job_seeker/details/controllers/education_controller.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_info_box.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/details/widgets/custom_screen_header.dart';

import '../../../common/widgets/buttons/custom_icon_action_button.dart';
import '../../../core/constant/app_gradient.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/title/custom_title.dart';

class EducationDetailsScreen extends StatelessWidget {
  const EducationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(EducationController());
    final screenHeight = UDeviceHelpers.getScreenHeight(context);
    final screenWidth = UDeviceHelpers.getScreenWidth(context);

    double headerHeight;
    if (screenHeight < 700) {
      headerHeight = 130;
    } else if (screenHeight < 800) {
      headerHeight = 150;
    } else {
      headerHeight = screenHeight * 0.2;
    }

    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Step 5 of 5',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomScreenHeader(
              height: headerHeight,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTitle(title: 'Complete Your Profile'),
                  SizedBox(height: USizes.spaceBtwItems),
                  CustomProgressHeader(progress: 0.85),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.02,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CustomMetricTitle(
                      title: 'Education',
                      subtitle: 'Add your educational background',
                      icon: Icon(
                        Icons.school,
                        color: UColors.primaryColor,
                        size: screenWidth * 0.08,
                      ),
                    ),
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),
                  
                  // Degree Dropdown
                  Text('Degree/Certification *', 
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold, color: UColors.primaryColor)),
                  const SizedBox(height: USizes.xs),
                  Obx(() => Container(
                    padding: const EdgeInsets.symmetric(horizontal: USizes.md),
                    decoration: BoxDecoration(
                      color: UColors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: UColors.lightGray),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: controller.selectedDegree.value,
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onChanged: (String? newValue) {
                          if (newValue != null) controller.selectedDegree.value = newValue;
                        },
                        items: ['High School Diploma', 'Associate Degree', 'Bachelor\'s Degree', 'Master\'s Degree', 'Doctorate']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
                          );
                        }).toList(),
                      ),
                    ),
                  )),
                  const SizedBox(height: USizes.spaceBtwInputFields),

                  // Field of Study
                  const CustomTextField(
                    label: 'Field of Study *',
                    hintText: 'Computer Science, Business, Design, etc.',
                    prefixIcon: Icons.book_outlined,
                  ),
                  const SizedBox(height: USizes.spaceBtwInputFields),

                  // Institution Name
                  const CustomTextField(
                    label: 'Institution/School Name *',
                    hintText: 'University of Technology',
                    prefixIcon: Icons.school_outlined,
                  ),
                  const SizedBox(height: USizes.spaceBtwItems),

                  // Currently Studying Checkbox
                  Obx(() => Row(
                    children: [
                      Checkbox(
                        value: controller.isCurrentlyStudying.value,
                        onChanged: controller.toggleCurrentlyStudying,
                        activeColor: UColors.primaryColor,
                      ),
                      Text('I am currently studying here', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  )),
                  const SizedBox(height: USizes.spaceBtwInputFields),

                  // Graduation Year (Conditional)
                  Obx(() => !controller.isCurrentlyStudying.value
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Graduation Year *', 
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold, color: UColors.primaryColor)),
                            const SizedBox(height: USizes.xs),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: USizes.md),
                              decoration: BoxDecoration(
                                color: UColors.white,
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: UColors.lightGray),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: controller.selectedYear.value.isEmpty ? null : controller.selectedYear.value,
                                  hint: const Text('Select year'),
                                  isExpanded: true,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  onChanged: (String? newValue) {
                                    if (newValue != null) controller.selectedYear.value = newValue;
                                  },
                                  items: List.generate(30, (index) => (DateTime.now().year - index).toString())
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value, style: Theme.of(context).textTheme.bodyMedium),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const SizedBox.shrink()),

                  const SizedBox(height: USizes.spaceBtwSections),

                  // Final Step Card
                  CustomInfoBox(
                    backgroundColor: UColors.primaryColor,
                    borderColor: UColors.primaryColor,
                    icon: Icons.check_circle_outline,
                    iconColor: UColors.secondaryColor,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Final Step!',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: UColors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arimo',
                              ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'After completing this step, you\'ll proceed to subscription and then access your dashboard.',
                          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: UColors.white.withValues(alpha: 0.8),
                                fontFamily: 'Arimo',
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(USizes.defaultSpace),
        child: CustomIconActionButton(
          title: 'Complete & Continue',
          icon: Icons.arrow_forward,
          onPressed: () {
            final navVisibilityController = Get.put(JobSeekerNavigationController());
            navVisibilityController.changeTab(2); // Profile tab
            Get.offAll(() => const JobSeekerNavigationMenu());
          },
          gradient: UAppGradient.primaryGradientOpacity,
        ),
      ),
    );
  }
}

