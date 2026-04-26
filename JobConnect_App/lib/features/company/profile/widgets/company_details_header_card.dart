import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/layout/profile_top_header.dart';
import '../../../../core/constant/colors.dart';

/// Header card displayed at the top of the company profile
/// Shows company icon with title and subtitle
class CompanyDetailsHeaderCard extends StatelessWidget {
  const CompanyDetailsHeaderCard({
    super.key,
    this.icon = Icons.business_outlined,
    this.title = 'Company Details',
    this.subtitle = 'View your company information',
  });

  final IconData icon;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return ProfileTopHeader(
      icon: icon,
      title: title,
      subtitle: subtitle,
      iconColor: UColors.white,
      titleColor: UColors.white,
      subtitleColor: UColors.white.withValues(alpha: 0.8),
    );
  }
}

