import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/details_about_screen.dart';
import '../../../../common/widgets/cards/role_action_card.dart';
import '../../../job_seeker/profile/basic_information_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: UAppGradient.primaryGradient),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: UAppBar(),
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(USizes.md),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight:
                    MediaQuery.sizeOf(context).height -
                    MediaQuery.of(context).padding.vertical -
                    (USizes.md * 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UGradientIconBox(
                    size: 80,
                    icon: Icon(
                      Iconsax.home,
                      color: UColors.primaryColor,
                      size: USizes.iconLg,
                    ),
                    gradient: UAppGradient.secondaryGradient,
                  ),
                  const SizedBox(height: USizes.md),
                  Text(
                    UText.projectTitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      color: UColors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: USizes.spaceBtwItems),
                  Text(
                    UText.landingSubtitle,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.white,
                      height: 1.45,
                    ),
                  ),
                  const SizedBox(height: USizes.xl),

                  /// Benefits Card
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(USizes.lg),
                    decoration: BoxDecoration(
                      color: UColors.white.withValues(alpha: 0.3),
                      borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
                      border: Border.all(color: UColors.lightGray),
                      boxShadow: [
                        BoxShadow(
                          color: UColors.black.withValues(alpha: 0.06),
                          blurRadius: 18,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Column(
                      children: [
                        _BenefitRow(text: UText.landingBenefitOne),
                        SizedBox(height: USizes.lg),
                        _BenefitRow(text: UText.landingBenefitTwo),
                        SizedBox(height: USizes.lg),
                        _BenefitRow(text: UText.landingBenefitThree),
                      ],
                    ),
                  ),
                  const SizedBox(height: USizes.spaceBtwSections),
                  URoleActionCard(
                    icon: Icon(Iconsax.user, color: UColors.primaryColor),
                    title: UText.iamJobSeeker,
                    subtitle: UText.findYourDreamJob,
                    onPressesd: () =>Get.to(() => const BasicInformationScreen()),
                  ),
                  const SizedBox(height: USizes.spaceBtwItems),
                  URoleActionCard(
                    icon: Icon(Iconsax.home, color: UColors.white),
                    title: UText.imamEmployer,
                    subtitle: UText.findTopTalent,
                    gradient: UAppGradient.primaryGradient,
                    onPressesd: () =>Get.to(()=>DetailsAboutScreen()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BenefitRow extends StatelessWidget {
  const _BenefitRow({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(
          Icons.check_rounded,
          color: UColors.secondaryColor,
          size: USizes.iconMd,
        ),
        const SizedBox(width: USizes.sm),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: UColors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
