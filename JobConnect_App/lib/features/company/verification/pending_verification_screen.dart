import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/company_navigation_menu.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/features/company/dashboard/controller/company_navigation_controller.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_footer_actions.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_help_banner.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_next_steps_card.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_stay_updated_card.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_verification_header.dart';
import 'package:jobconnect_app/features/company/verification/widgets/pending_verification_timeline_card.dart';

class PendingVerificationScreen extends StatelessWidget {
  const PendingVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(),
      body: Column(
        children: [
          const PendingVerificationHeader(),
          Expanded(
            child: Container(
              width: double.infinity,
              color: UColors.white,
              child: SingleChildScrollView(
                padding: UPadding.screenPadding,
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 560),
                    child: Column(
                      children: [
                        const PendingVerificationTimelineCard(),
                        const SizedBox(height: USizes.lg),
                        const PendingNextStepsCard(),
                        const SizedBox(height: USizes.lg),
                        const PendingStayUpdatedCard(),
                        const SizedBox(height: USizes.lg),
                        const PendingHelpBanner(),
                        const SizedBox(height: USizes.lg),
                        PendingFooterActions(
                          onProceed: () {
                            final CompanyNavigationController controller =
                                Get.isRegistered<CompanyNavigationController>()
                                ? Get.find<CompanyNavigationController>()
                                : Get.put(CompanyNavigationController());
                            controller.changeTab(0);
                            Get.offAll(() => const CompanyNavigationMenu());
                          },
                        ),
                        const SizedBox(height: USizes.md),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
