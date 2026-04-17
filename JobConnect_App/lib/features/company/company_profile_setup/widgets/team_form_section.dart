import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/controller/team_controller.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/company_size_dropdown.dart';

class TeamFormSection extends StatelessWidget {
  const TeamFormSection({super.key, required this.controller});

  final TeamController controller;

  Widget _buildSelectableChip({
    required BuildContext context,
    required String label,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: USizes.xs,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: selected ? UColors.primaryColor : UColors.white,
          borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          border: Border.all(
            color: selected ? UColors.primaryColor : UColors.lightGray,
          ),
        ),
        child: Center(
          child: Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 15,
                  color: selected ? UColors.white : UColors.primaryColor,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w600,
                ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: UColors.primaryColor,
            fontFamily: 'Arimo',
            fontWeight: FontWeight.w600,
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSectionTitle(context, 'Company Size'),
        const SizedBox(height: USizes.spaceBtwItems),
        Obx(
          () => CompanySizeDropdown(
            items: controller.companySizes,
            value: controller.selectedCompanySize.value,
            onChanged: (value) {
              if (value != null) {
                controller.selectCompanySize(value);
              }
            },
          ),
        ),
        const SizedBox(height: USizes.spaceBtwSections),
        _buildSectionTitle(context, 'Key Departments'),
        Text(
          'Select the main department in your company',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: UColors.gray,
                fontFamily: 'Arimo',
              ),
        ),
        const SizedBox(height: USizes.spaceBtwItems),
        Obx(
          () => GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: controller.departments.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 3,
              crossAxisSpacing: USizes.xs,
              childAspectRatio: 3.8,
            ),
            itemBuilder: (context, index) {
              final String department = controller.departments[index];
              final bool selected =
                  controller.selectedDepartments.contains(department);

              return _buildSelectableChip(
                context: context,
                label: department,
                selected: selected,
                onTap: () => controller.toggleDepartment(department),
              );
            },
          ),
        ),
        const SizedBox(height: USizes.spaceBtwSections),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(USizes.md),
          decoration: BoxDecoration(
            color: UColors.primaryColor.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(
                Iconsax.info_circle,
                color: UColors.primaryColor,
                size: USizes.iconMd,
              ),
              const SizedBox(width: USizes.sm),
              Expanded(
                child: Text(
                  'Tip: A complete profile helps you attract better candidates. You can add team members later in your profile settings.',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
