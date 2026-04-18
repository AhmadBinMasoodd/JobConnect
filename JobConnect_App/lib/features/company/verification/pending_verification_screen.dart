import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_action_button.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/document_security_info.dart';

class PendingVerificationScreen extends StatelessWidget {
  const PendingVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const UAppBar(),
      body: Column(
        children: [
          // Top hero area in primary gradient with icon and heading text.
          Container(
            width: double.infinity,
            padding: const EdgeInsets.fromLTRB(
              USizes.lg,
              USizes.xl,
              USizes.lg,
              USizes.xl,
            ),
            decoration: const BoxDecoration(
              gradient: UAppGradient.primaryGradient,
            ),
            child: Column(
              children: [
                Container(
                  width: 84,
                  height: 84,
                  decoration: BoxDecoration(
                    color: UColors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: UColors.black.withValues(alpha: 0.12),
                        blurRadius: 16,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.schedule,
                    color: UColors.secondaryColor,
                    size: 36,
                  ),
                ),
                const SizedBox(height: USizes.lg),
                Text(
                  UText.pendingVerificationTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: UColors.white,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: USizes.sm),
                Text(
                  UText.pendingVerificationSubtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: UColors.white.withValues(alpha: 0.85),
                    fontFamily: 'Arimo',
                  ),
                ),
              ],
            ),
          ),

          // Bottom surface with status timeline and next action blocks.
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
                        ShadowBox(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: USizes.md,
                                  vertical: USizes.sm,
                                ),
                                decoration: BoxDecoration(
                                  color: UColors.secondaryColor.withValues(
                                    alpha: 0.30,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    USizes.borderRadiusLg,
                                  ),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(
                                      Icons.circle,
                                      size: USizes.iconXs,
                                      color: UColors.secondaryColor,
                                    ),
                                    const SizedBox(width: USizes.sm),
                                    Text(
                                      UText.pendingApproval,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge
                                          ?.copyWith(
                                            color: UColors.secondaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: USizes.lg),
                              Container(
                                padding: const EdgeInsets.all(USizes.md),
                                decoration: BoxDecoration(
                                  color: UColors.lightGray.withValues(
                                    alpha: 0.35,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    USizes.cardRadiusMd,
                                  ),
                                ),
                                child: const DocumentSecurityInfo(
                                  title: UText.documentReceivedTitle,
                                  subtitle: UText.documentReceivedSubtitle,
                                  icon: Icons.check,
                                ),
                              ),
                              const SizedBox(height: USizes.md),
                              Container(
                                padding: const EdgeInsets.all(USizes.md),
                                decoration: BoxDecoration(
                                  color: UColors.lightGray.withValues(
                                    alpha: 0.35,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    USizes.cardRadiusMd,
                                  ),
                                ),
                                child: const DocumentSecurityInfo(
                                  title: UText.underVerificationTitle,
                                  subtitle: UText.underVerificationSubtitle,
                                  icon: Icons.assignment_turned_in_outlined,
                                  iconColor: UColors.verificationInfoIcon,
                                  iconBackgroundColor:
                                      UColors.verificationInfoSurface,
                                  iconBorderColor: null,
                                ),
                              ),
                              const SizedBox(height: USizes.md),
                              Container(
                                padding: const EdgeInsets.all(USizes.md),
                                decoration: BoxDecoration(
                                  color: UColors.lightGray.withValues(
                                    alpha: 0.35,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    USizes.cardRadiusMd,
                                  ),
                                ),
                                child: DocumentSecurityInfo(
                                  title: UText.finalDecisionTitle,
                                  subtitle: UText.finalDecisionSubtitle,
                                  icon: Icons.check_circle_outline,
                                  iconColor: UColors.gray,
                                  iconBackgroundColor: UColors.gray.withValues(
                                    alpha: 0.12,
                                  ),
                                  iconBorderColor: UColors.gray.withValues(
                                    alpha: 0.35,
                                  ),
                                  titleColor: UColors.gray.withValues(
                                    alpha: 0.8,
                                  ),
                                  subtitleColor: UColors.gray.withValues(
                                    alpha: 0.7,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: USizes.lg),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(USizes.lg),
                          decoration: BoxDecoration(
                            gradient: UAppGradient.secondaryGradient,
                            borderRadius: BorderRadius.circular(
                              USizes.cardRadiusLg,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                UText.whatHappensNextTitle,
                                style: Theme.of(context).textTheme.titleLarge
                                    ?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              const SizedBox(height: USizes.md),
                              const _NumberStepRow(
                                index: 1,
                                text: UText.whatHappensNextStepOne,
                              ),
                              const SizedBox(height: USizes.sm),
                              const _NumberStepRow(
                                index: 2,
                                text: UText.whatHappensNextStepTwo,
                              ),
                              const SizedBox(height: USizes.sm),
                              const _NumberStepRow(
                                index: 3,
                                text: UText.whatHappensNextStepThree,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: USizes.lg),
                        ShadowBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  color: UColors.lightGray.withValues(
                                    alpha: 0.80,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    USizes.cardRadiusMd,
                                  ),
                                ),
                                child: const Icon(
                                  Icons.notifications_none,
                                  color: UColors.primaryColor,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.md),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      UText.stayUpdatedTitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color: UColors.primaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    const SizedBox(height: USizes.xs),
                                    Text(
                                      UText.stayUpdatedSubtitle,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            color: UColors.mutedTextColor,
                                            fontFamily: 'Arimo',
                                          ),
                                    ),
                                    const SizedBox(height: USizes.sm),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.mail_outline,
                                          size: USizes.iconSm,
                                          color: UColors.gray.withValues(
                                            alpha: 0.8,
                                          ),
                                        ),
                                        const SizedBox(width: USizes.sm),
                                        Text(
                                          UText.supportEmail,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                color: UColors.mutedTextColor,
                                                fontFamily: 'Arimo',
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: USizes.lg),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(USizes.md),
                          decoration: BoxDecoration(
                            color: UColors.verificationInfoSurface.withValues(
                              alpha: 0.35,
                            ),
                            border: Border.all(
                              color: UColors.verificationInfoIcon.withValues(
                                alpha: 0.25,
                              ),
                            ),
                            borderRadius: BorderRadius.circular(
                              USizes.cardRadiusMd,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(
                                Icons.lightbulb_outline,
                                color: UColors.secondaryColor,
                                size: USizes.iconSm,
                              ),
                              const SizedBox(width: USizes.sm),
                              Expanded(
                                child: Text(
                                  UText.pendingHelpMessage,
                                  style: Theme.of(context).textTheme.bodyMedium
                                      ?.copyWith(
                                        color: UColors.mutedColorDark,
                                        fontFamily: 'Arimo',
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: USizes.lg),
                        CustomActionButton(
                          text: UText.proceedToDashboard,
                          onPressed: () {},
                          backgroundColor: UColors.primaryColor,
                        ),
                        const SizedBox(height: USizes.sm),
                        Text(
                          UText.pendingFooterMessage,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: UColors.gray,
                                fontFamily: 'Arimo',
                              ),
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

class _NumberStepRow extends StatelessWidget {
  const _NumberStepRow({required this.index, required this.text});

  final int index;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
            color: UColors.primaryColor,
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: Text(
            '$index',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: UColors.white,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(width: USizes.md),
        Expanded(
          child: Text(
            text,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
            ),
          ),
        ),
      ],
    );
  }
}
