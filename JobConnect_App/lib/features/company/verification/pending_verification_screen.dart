import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
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
                    child: const Column(
                      children: [
                        PendingVerificationTimelineCard(),
                        SizedBox(height: USizes.lg),
                        PendingNextStepsCard(),
                        SizedBox(height: USizes.lg),
                        PendingStayUpdatedCard(),
                        SizedBox(height: USizes.lg),
                        PendingHelpBanner(),
                        SizedBox(height: USizes.lg),
                        PendingFooterActions(),
                        SizedBox(height: USizes.md),
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
