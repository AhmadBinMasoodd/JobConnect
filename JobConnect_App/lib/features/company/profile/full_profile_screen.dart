import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/buttons/custom_icon_action_button.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_text_field.dart';
import 'package:jobconnect_app/common/widgets/textfields/custom_rich_text_field.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';
import 'widgets/company_details_header_card.dart';
import 'widgets/department_chip.dart';
import 'widgets/verification_status_tile.dart';

/// Full company profile display screen
/// Shows comprehensive company information including:
/// - Company details (name, industry, founding year, description, team size)
/// - Location information
/// - Contact details
/// - Department list
/// - Verification status
class FullProfileScreen extends StatelessWidget {
  const FullProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with back button and edit action
      appBar: UAppBar(
        showBackArrow: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: USizes.sm),
            child: SizedBox(
              width: 90,
              child: CustomIconActionButton(
                title: 'Edit',
                iconOnLeft: true,
                borderColor: UColors.white,
                backgroundColor: UColors.white.withValues(alpha: 0.15),
                iconColor: UColors.white,
                icon: Icons.edit,
                verticalPadding: 6,
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Top gradient section with company header
              Container(
                height: UDeviceHelpers.getScreenHeight(context) * 0.15,
                padding: const EdgeInsets.all(USizes.defaultSpace),
                decoration: BoxDecoration(gradient: UAppGradient.primaryGradient),
                child: const CompanyDetailsHeaderCard(),
              ),
              // Main content area with all profile sections
              Container(
                width: double.infinity,
                color: UColors.white,
                padding: const EdgeInsets.all(USizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ===== Company Information Section =====
                    ShadowBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section header with icon and title
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(USizes.sm),
                                decoration: BoxDecoration(
                                  color: UColors.primaryColor,
                                  borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
                                ),
                                child: const Icon(
                                  Icons.info_outlined,
                                  color: UColors.white,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Text(
                                'Company Information',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Company Name field
                          Text(
                            'Company Name',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.sm),
                          const CustomTextField(
                            hintText: 'TechCorp Solutions',
                            prefixIcon: Icons.business,
                          ),
                          const SizedBox(height: USizes.md),
                          // Industry field
                          Text(
                            'Industry',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.sm),
                          const CustomTextField(
                            hintText: 'Technology & IT',
                            prefixIcon: Icons.category,
                          ),
                          const SizedBox(height: USizes.md),
                          // Year Founded field
                          Text(
                            'Year Founded',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.sm),
                          const CustomTextField(
                            hintText: '2015',
                            prefixIcon: Icons.calendar_today,
                          ),
                          const SizedBox(height: USizes.md),
                          // Company Description field (rich text with character limit)
                          Text(
                            'Company Description',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.sm),
                          const CustomRichTextField(
                            hintText: 'Tell us about your company...',
                            maxCharacters: 500,
                            maxLines: 4,
                          ),
                          const SizedBox(height: USizes.md),
                          // Team Size field
                          Text(
                            'Team Size',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.sm),
                          const CustomTextField(
                            hintText: '51-200 employees',
                            prefixIcon: Icons.people,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: USizes.md),
                    // ===== Location Section =====
                    ShadowBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section header with icon and title
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(USizes.sm),
                                decoration: BoxDecoration(
                                  color: UColors.primaryColor,
                                  borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
                                ),
                                child: const Icon(
                                  Icons.location_on_outlined,
                                  color: UColors.white,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Text(
                                'Location',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Street Address
                          Text(
                            'Street Address',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                          ),
                          const SizedBox(height: USizes.xs),
                          Text(
                            '123 Tech Street',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.md),
                          // City and State/Province in a row
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'City',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: UColors.gray,
                                            fontFamily: 'Arimo',
                                          ),
                                    ),
                                    const SizedBox(height: USizes.xs),
                                    Text(
                                      'San Francisco',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: UColors.primaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'State/Province',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: UColors.gray,
                                            fontFamily: 'Arimo',
                                          ),
                                    ),
                                    const SizedBox(height: USizes.xs),
                                    Text(
                                      'California',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: UColors.primaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Country and ZIP/Postal Code in a row
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Country',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: UColors.gray,
                                            fontFamily: 'Arimo',
                                          ),
                                    ),
                                    const SizedBox(height: USizes.xs),
                                    Text(
                                      'United States',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: UColors.primaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'ZIP/Postal Code',
                                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                            color: UColors.gray,
                                            fontFamily: 'Arimo',
                                          ),
                                    ),
                                    const SizedBox(height: USizes.xs),
                                    Text(
                                      '94105',
                                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                            color: UColors.primaryColor,
                                            fontFamily: 'Arimo',
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: USizes.md),
                    // ===== Contact Information Section =====
                    ShadowBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section header with icon and title
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(USizes.sm),
                                decoration: BoxDecoration(
                                  color: UColors.primaryColor,
                                  borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
                                ),
                                child: const Icon(
                                  Icons.phone_outlined,
                                  color: UColors.white,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Text(
                                'Contact Information',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Phone Number
                          Text(
                            'Phone Number',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                          ),
                          const SizedBox(height: USizes.xs),
                          Text(
                            '+1 (555) 123-4567',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.md),
                          // Email Address
                          Text(
                            'Email Address',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                          ),
                          const SizedBox(height: USizes.xs),
                          Text(
                            'contact@techcorp.com',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          const SizedBox(height: USizes.md),
                          // Website
                          Text(
                            'Website',
                            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                          ),
                          const SizedBox(height: USizes.xs),
                          Text(
                            'www.techcorp.com',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                  color: UColors.primaryColor,
                                  fontFamily: 'Arimo',
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: USizes.md),
                    // ===== Departments Section =====
                    ShadowBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section header with icon and title
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(USizes.sm),
                                decoration: BoxDecoration(
                                  color: UColors.primaryColor,
                                  borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
                                ),
                                child: const Icon(
                                  Icons.business,
                                  color: UColors.white,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Text(
                                'Departments',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Department chips list
                          Wrap(
                            spacing: USizes.sm,
                            runSpacing: USizes.sm,
                            children: const [
                              DepartmentChip('Engineering'),
                              DepartmentChip('Product'),
                              DepartmentChip('Design'),
                              DepartmentChip('Marketing'),
                              DepartmentChip('Sales'),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: USizes.md),
                    // ===== Verification Status Section =====
                    ShadowBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Section header with icon and title
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(USizes.sm),
                                decoration: BoxDecoration(
                                  color: UColors.primaryColor,
                                  borderRadius: BorderRadius.circular(USizes.cardRadiusSm),
                                ),
                                child: const Icon(
                                  Icons.verified,
                                  color: UColors.white,
                                  size: USizes.iconMd,
                                ),
                              ),
                              const SizedBox(width: USizes.sm),
                              Text(
                                'Verification Status',
                                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                      color: UColors.primaryColor,
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(height: USizes.md),
                          // Verification status tiles
                          const VerificationStatusTile(
                            title: 'Business License',
                            status: 'Verified',
                          ),
                          const SizedBox(height: USizes.sm),
                          const VerificationStatusTile(
                            title: 'Tax ID',
                            status: 'Verified',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: USizes.xl),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


