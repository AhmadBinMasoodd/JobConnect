import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_icon_action_button.dart';
import 'package:jobconnect_app/common/widgets/layout/screen_header.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/controller/team_controller.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/registration_progress_header.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/team_form_section.dart';

import '../../../common/widgets/cards/shadow_box.dart';

class TeamScreen extends StatelessWidget {
  const TeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TeamController controller = Get.isRegistered<TeamController>()
        ? Get.find<TeamController>()
        : Get.put(TeamController());

    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'About Your Team',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: UColors.white,
                fontFamily: 'Arimo',
              ),
        ),
      ),
      body: Column(
        children: [
          const RegistrationProgressHeader(currentStep: 3),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ScreenHeader(
                    size: USizes.iconMd * 3,
                    gradient: UAppGradient.primaryGradient,
                    icon: const Icon(
                      Iconsax.people,
                      color: UColors.white,
                    ),
                    titleText: 'About Your Team',
                    subtitleText:
                        'Tell the candidate about your company size and structure.',
                    child: ShadowBox(
                      child: TeamFormSection(controller: controller),
                    ),
                  ),
                  Padding(
                    padding: UPadding.screenPadding,
                    child: Column(
                      children: [
                        CustomIconActionButton(
                          title: UText.continueBtnText,
                          icon: Icons.arrow_forward,
                          onPressed: () {},
                          gradient: UAppGradient.primaryGradient,
                        ),
                        const SizedBox(height: USizes.spaceBtwItems),
                        CustomIconActionButton(
                          title: 'Back',
                          icon: Icons.arrow_back,
                          iconOnLeft: true,
                          onPressed: () => Get.back(),
                          textColor: UColors.primaryColor,
                          iconColor: UColors.primaryColor,
                          backgroundColor: UColors.white,
                          borderColor: UColors.primaryColor.withValues(alpha: 0.2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
