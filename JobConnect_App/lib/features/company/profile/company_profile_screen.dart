import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/profile/full_profile_screen.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_detail_box.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_section_card.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_setting_tile.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_stat_box.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_tag_chip.dart';
import 'package:jobconnect_app/features/company/profile/widgets/profile_verification_tile.dart';


class CompanyProfileScreen extends StatelessWidget {
  const CompanyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: false,
        title: Row(
          children: [
            Text(
              UText.profileScreenTitle,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: UColors.white,
                    fontFamily: 'Arimo',
                  ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: UAppGradient.primaryGradient,
                  ),
                  child: Padding(
                    padding: UPadding.screenPadding,
                    child: Column(
                      children: [
                        _ProfileHeaderCard(),
                        const SizedBox(height: USizes.lg),
                        Row(
                          children: const [
                            Expanded(
                              child: ProfileStatBox(
                                value: '156',
                                label: 'Total Contacts',
                              ),
                            ),
                            SizedBox(width: USizes.sm),
                            Expanded(
                              child: ProfileStatBox(
                                value: '48',
                                label: 'Active Chats',
                              ),
                            ),
                            SizedBox(width: USizes.sm),
                            Expanded(
                              child: ProfileStatBox(
                                value: '12',
                                label: 'Saved',
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: UColors.white,
                  padding: const EdgeInsets.fromLTRB(
                    USizes.defaultSpace,
                    USizes.md,
                    USizes.defaultSpace,
                    90,
                  ),
                  child: Column(
                    children: [
                      ProfileSectionCard(
                        title: UText.profileAboutCompanyTitle,
                        child: Text(
                          UText.profileAboutCompanyBody,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: UColors.gray,
                                    fontFamily: 'Arimo',
                                    height: 1.5,
                                  ),
                        ),
                      ),
                      const SizedBox(height: USizes.md),
                      ProfileSectionCard(
                        title: UText.profileCompanyDetailsTitle,
                        child: Column(
                          children: const [
                            ProfileDetailBox(
                              icon: Icons.public,
                              title: UText.profileWebsite,
                              value: UText.profileWebsiteValue,
                            ),
                            SizedBox(height: USizes.sm),
                            ProfileDetailBox(
                              icon: Icons.business_center_outlined,
                              title: UText.profileIndustry,
                              value: UText.profileIndustryValue,
                            ),
                            SizedBox(height: USizes.sm),
                            ProfileDetailBox(
                              icon: Icons.groups_2_outlined,
                              title: UText.profileCompanySize,
                              value: UText.profileCompanySizeValue,
                            ),
                            SizedBox(height: USizes.sm),
                            ProfileDetailBox(
                              icon: Icons.location_on_outlined,
                              title: UText.profileHeadquarters,
                              value: UText.profileHeadquartersValue,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: USizes.md),
                      ProfileSectionCard(
                        title: UText.profileCultureBenefitsTitle,
                        actionText: UText.profileEdit,
                        onActionTap: () {},
                        child: Wrap(
                          spacing: USizes.sm,
                          runSpacing: USizes.sm,
                          children: const [
                            ProfileTagChip(label: 'Remote Work'),
                            ProfileTagChip(label: 'Health Insurance'),
                            ProfileTagChip(label: 'Flexible Hours'),
                            ProfileTagChip(label: 'Learning Budget'),
                            ProfileTagChip(label: 'Team Events'),
                          ],
                        ),
                      ),
                      const SizedBox(height: USizes.md),
                      ProfileSectionCard(
                        title: UText.profileVerificationDocumentsTitle,
                        child: Column(
                          children: const [
                            ProfileVerificationTile(
                              title: UText.profileBusinessLicense,
                              status: UText.profileStatusVerified,
                            ),
                            SizedBox(height: USizes.sm),
                            ProfileVerificationTile(
                              title: UText.profileTaxId,
                              status: UText.profileStatusVerified,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: USizes.md),
                      ProfileSectionCard(
                        title: UText.profileAccountSettingsTitle,
                        child: Column(
                          children: [
                            ProfileSettingTile(
                              icon: Icons.lock_outline,
                              title: UText.profileChangePassword,
                              onTap: () {},
                            ),
                            ProfileSettingTile(
                              icon: Icons.credit_card_outlined,
                              title: UText.profileSubscriptionBilling,
                              trailingText: UText.profileComingSoon,
                              titleColor: UColors.gray,
                              trailingColor: UColors.gray,
                              onTap: () {},
                            ),
                            ProfileSettingTile(
                              icon: Icons.logout,
                              title: UText.profileLogout,
                              onTap: () {},
                            ),
                            ProfileSettingTile(
                              icon: Icons.delete_outline,
                              title: UText.profileDeleteAccount,
                              titleColor: UColors.error,
                              trailingColor: UColors.error,
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: USizes.sm),
          child: Container(
            padding: const EdgeInsets.all(USizes.md),
            decoration: BoxDecoration(
              color: UColors.white,
              borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
              boxShadow: const [
                BoxShadow(
                  color: UColors.profileCardShadow,
                  blurRadius: 16,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 56 + USizes.md),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'TechCorp Inc.',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w700,
                                      color: UColors.primaryColor,
                                    ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: USizes.sm,
                                  vertical: USizes.xs,
                                ),
                                decoration: BoxDecoration(
                                  color: UColors.success,
                                  borderRadius: BorderRadius.circular(
                                    USizes.cardRadiusXs,
                                  ),
                                ),
                                child: Text(
                                  UText.profileVerified,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                        color: UColors.verifiedBadgeText,
                                        fontFamily: 'Arimo',
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.xs),
                          Text(
                            'Technology & Software',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                          ),
                          const SizedBox(height: USizes.xs),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                size: USizes.iconSm,
                                color: UColors.gray,
                              ),
                              const SizedBox(width: USizes.xs),
                              Text(
                                'San Francisco, CA',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: UColors.gray,
                                      fontFamily: 'Arimo',
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.xs),
                          Row(
                            children: [
                              const Icon(
                                Icons.groups_2_outlined,
                                size: USizes.iconSm,
                                color: UColors.gray,
                              ),
                              const SizedBox(width: USizes.xs),
                              Text(
                                '50-200 employees',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: UColors.gray,
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
                const SizedBox(height: USizes.md),
                const Divider(color: UColors.lightGray),
                const SizedBox(height: USizes.sm),
                Row(
                  children: [
                    const Icon(
                      Icons.mail_outline,
                      size: USizes.iconSm,
                      color: UColors.gray,
                    ),
                    const SizedBox(width: USizes.xs),
                    Text(
                      'contact@techcorp.com',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: UColors.gray,
                            fontFamily: 'Arimo',
                          ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.call_outlined,
                      size: USizes.iconSm,
                      color: UColors.gray,
                    ),
                    const SizedBox(width: USizes.xs),
                    Text(
                      '+1 234 567 890',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: UColors.gray,
                            fontFamily: 'Arimo',
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: USizes.lg,
          left: USizes.sm,
          child: SizedBox(
            width: 56,
            height: 56,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: 56,
                  height: 56,
                  decoration: BoxDecoration(
                    color: UColors.primaryColor,
                    borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
                  ),
                  child: const Icon(
                    Icons.apartment,
                    color: UColors.white,
                    size: USizes.iconMd,
                  ),
                ),
                Positioned(
                  right: -6,
                  bottom: -4,
                  child: Material(
                    color: UColors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => const FullProfileScreen(),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          color: UColors.profileEditActionBackground,
                          shape: BoxShape.circle,
                          border: Border.all(color: UColors.white, width: 1.5),
                        ),
                        alignment: Alignment.center,
                        child: const Icon(
                          Icons.edit,
                          size: 14,
                          color: UColors.primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
