import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/layout/screen_header.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/controller/details_about_controller.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/about_form_section.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/registration_progress_header.dart';

import '../../../common/widgets/cards/shadow_box.dart';
import '../../../core/constant/colors.dart';
import '../../../core/constant/size.dart';

class DetailsAboutScreen extends StatelessWidget {
  const DetailsAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DetailsAboutController controller =
        Get.isRegistered<DetailsAboutController>()
            ? Get.find<DetailsAboutController>()
            : Get.put(DetailsAboutController());

    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Details About Your Company',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          const RegistrationProgressHeader(currentStep: 1),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ScreenHeader(
                    size: USizes.iconMd * 3,
                    gradient: UAppGradient.secondaryGradient,
                    icon: const Icon(
                      Iconsax.user_cirlce_add,
                      color: UColors.primaryColorDark,
                    ),
                    titleText: 'Tell us about your company',
                    subtitleText:
                        'Tell Candidates about your company and the type of talent you are looking for.',
                    child: ShadowBox(
                      child: AboutFormSection(controller: controller),
                    ),
                  ),
                  Padding(
                    padding: UPadding.screenPadding,
                    child: CustomActionButton(text: 'text', onPressed: () {}),
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
