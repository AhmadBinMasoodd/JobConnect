import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_screen_header.dart';

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
                              hintText: 'Add a skill (e.g., React, Python)',
                              hintStyle: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    color: UColors.gray,
                                    fontFamily: 'Arimo',
                                  ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  USizes.cardRadiusMd,
                                ),
                                borderSide: const BorderSide(
                                  color: UColors.lightGray,
                                  width: 1,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  USizes.cardRadiusMd,
                                ),
                                borderSide: const BorderSide(
                                  color: UColors.lightGray,
                                  width: 1,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  USizes.cardRadiusMd,
                                ),
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
                          ),
                        ),
                        const SizedBox(width: USizes.spaceBtwInputFields),
                        ElevatedButton(
                          onPressed: () {
                            if (_skillController.text.isNotEmpty) {
                              // Handle adding skill logic here
                              _skillController.clear();
                            }
                          },
                          child: const Text('Add'),
                        ),
                      ],
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    Container(
                      padding: const EdgeInsets.all(USizes.md),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: UColors.veryLightBlue,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: UColors.lightBlue),
                      ),
                      child:  Row(
                        children: [
                          Icon(
                            Icons.lightbulb_outline,
                            size: USizes.iconSm,
                            color: UColors.info,
                          ),
                          SizedBox(width: USizes.defaultSpace),
                          Expanded(
                            child: Text(
                              'Add three more skills to continue',
                              style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                    color: UColors.primaryColor,
                                    fontFamily: 'Arimo',
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
