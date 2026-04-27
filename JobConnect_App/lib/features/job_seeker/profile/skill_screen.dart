import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/features/job_seeker/profile/controllers/skill_controller.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_screen_header.dart';
import 'package:get/get.dart';
import '../../../common/widgets/buttons/custom_icon_action_button.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/title/custom_title.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> {
  // Stable controller for text input
  final TextEditingController _skillController = TextEditingController();

  @override
  void dispose() {
    _skillController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = UDeviceHelpers.getScreenHeight(context);
    final screenWidth = UDeviceHelpers.getScreenWidth(context);

    final controller = Get.put(SkillController());

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
              'Step 3 of 5',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.white,
                fontFamily: 'Arimo',
              ),
            ),
          ],
        ),
      ),
      body: GestureDetector(
        // Dismiss keyboard when tapping outside
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
                    CustomProgressHeader(progress: 0.50),
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
                      title: 'Your Skills',
                      subtitle:
                          'Add at least three skills that represent your expertise',
                      icon: Icon(
                        Icons.batch_prediction,
                        color: UColors.primaryColor,
                        size: USizes.iconMd,
                      ),
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _skillController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: UColors.white,
                              hintText: 'Add a skill (e.g., React, Python)',
                              hintStyle: Theme.of(context).textTheme.bodyMedium
                                  ?.copyWith(
                                    color: UColors.gray,
                                    fontFamily: 'Arimo',
                                  ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: UColors.lightGray,
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: UColors.lightGray,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                  color: UColors.primaryColor,
                                  width: 1.5,
                                ),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: USizes.md,
                                vertical: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: USizes.spaceBtwInputFields),
                        SizedBox(
                          height: 52, // Height to match textfield
                          child: ElevatedButton(
                            onPressed: () {
                              if (_skillController.text.isNotEmpty) {
                                controller.addSkill(_skillController.text);
                                _skillController.clear();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9290B1), // Muted primary color for button
                              foregroundColor: UColors.white,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                            ),
                            child: Text(
                              'Add',
                              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                                color: UColors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Arimo',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),

                    Obx(
                      () => controller.skills.isNotEmpty
                          ? Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(USizes.md),
                              decoration: BoxDecoration(
                                color: UColors.white,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: const Color(0xFFE5E7EB)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your Skills (${controller.skills.length})',
                                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                          color: const Color(0xFF312C51),
                                          fontWeight: FontWeight.w600,
                                          fontFamily: 'Arimo',
                                        ),
                                  ),
                                  const SizedBox(height: USizes.md),
                                  Wrap(
                                    spacing: 8,
                                    runSpacing: 8,
                                    children: controller.skills.map((skill) {
                                      return Container(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12,
                                          vertical: 8,
                                        ),
                                        decoration: BoxDecoration(
                                          color: const Color(0xFF3B3663), // Dark primary color for tags
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              skill,
                                              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                                                    color: Colors.white,
                                                    fontFamily: 'Arimo',
                                                  ),
                                            ),
                                            const SizedBox(width: 8),
                                            GestureDetector(
                                              onTap: () => controller.removeSkill(skill),
                                              child: const Icon(
                                                Icons.close,
                                                size: 14,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ],
                              ),
                            )
                          : const SizedBox.shrink(),
                    ),

                    const SizedBox(height: USizes.spaceBtwSections),

                    Obx(() {
                      if (controller.skills.length >= 3) return const SizedBox.shrink();
                      return Container(
                        padding: const EdgeInsets.all(USizes.md),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: UColors.veryLightBlue,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: UColors.lightBlue),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.lightbulb_outline,
                              size: USizes.iconSm,
                              color: UColors.info,
                            ),
                            const SizedBox(width: USizes.defaultSpace),
                            Expanded(
                              child: Text(
                                'Add ${3 - controller.skills.length} more skills to continue',
                                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                    ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                    // Responsive space
                    SizedBox(height: screenHeight * 0.15),
                    CustomIconActionButton(
                      title: 'Continue',
                      icon: Icons.arrow_forward,
                      onPressed: () {},
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
