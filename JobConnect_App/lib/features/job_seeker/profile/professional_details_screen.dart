import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_icon_action_button.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/custom_rich_text_field.dart';
import 'package:jobconnect_app/features/job_seeker/profile/skill_screen.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_metric_title.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_progress_header.dart';
import 'package:jobconnect_app/features/job_seeker/profile/widgets/custom_screen_header.dart';
import 'package:get/get.dart';
import '../../../common/widgets/textfields/custom_text_field.dart';
import '../../../core/constant/size.dart';
import '../../../core/helpers/device_helpers.dart';
import '../common/appbar/custom_app_bar.dart';
import '../common/title/custom_title.dart';

class ProfessionalDetailsScreen extends StatefulWidget {
  const ProfessionalDetailsScreen({super.key});

  @override
  State<ProfessionalDetailsScreen> createState() => _ProfessionalDetailsScreenState();
}

class _ProfessionalDetailsScreenState extends State<ProfessionalDetailsScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _experienceController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _experienceController.dispose();
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
              'Step 2 of 5',
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CustomTitle(title: 'Complete Your Profile'),
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
                    const CustomMetricTitle(
                      title: 'Professional Details',
                      subtitle: 'Tell us about your professional background',
                      icon: Icon(
                        Icons.card_travel,
                        color: UColors.primaryColor,
                        size: USizes.iconMd,
                      ),
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),
                    CustomTextField(
                      controller: _titleController,
                      label: 'Professional Title',
                      hintText: 'e.g. Senior full stack developer',
                      prefixIcon: Icons.title_outlined,
                    ),
                    const SizedBox(height: USizes.spaceBtwInputFields),
                    CustomTextField(
                      controller: _experienceController,
                      label: 'Years of Experience',
                      hintText: 'e.g. 5 years',
                      prefixIcon: Icons.work_outline,
                    ),
                    const SizedBox(height: USizes.spaceBtwSections),

                    // Responsive space instead of fixed 150
                    SizedBox(height: screenHeight * 0.15),

                    CustomIconActionButton(
                      title: 'Continue',
                      icon: Icons.arrow_forward,
                      onPressed: () => Get.to(() => const SkillScreen()),
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
