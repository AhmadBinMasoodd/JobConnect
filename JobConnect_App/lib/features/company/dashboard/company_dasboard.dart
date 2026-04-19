import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/dashboard/widgets/dashboard_candidate_tile.dart';
import 'package:jobconnect_app/features/company/dashboard/widgets/dashboard_quick_action_card.dart';
import 'package:jobconnect_app/features/company/dashboard/widgets/dashboard_section_title.dart';
import 'package:jobconnect_app/features/company/dashboard/widgets/dashboard_stat_card.dart';

class CompanyDashboardScreen extends StatelessWidget {
  const CompanyDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> recentlyContactedCandidates = [
      {
        'initials': 'JD',
        'name': 'John Doe',
        'role': 'Full Stack Developer',
        'rating': '4.8',
      },
      {
        'initials': 'SW',
        'name': 'Sarah Wilson',
        'role': 'UI/UX Designer',
        'rating': '4.9',
      },
      {
        'initials': 'MJ',
        'name': 'Mike Johnson',
        'role': 'DevOps Engineer',
        'rating': '4.7',
      },
    ];

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            color: UColors.primaryColor,
            padding: const EdgeInsets.all(USizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  UText.dashboardWelcomeBack,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: UColors.white.withValues(alpha: 0.85),
                    fontFamily: 'Arimo',
                  ),
                ),
                const SizedBox(height: USizes.xs),
                Text(
                  UText.dashboardCompanyName,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: UColors.white,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: USizes.md),
                Row(
                  children: [
                    const Expanded(
                      child: DashboardStatCard(
                        icon: Icons.people_outline,
                        title: UText.dashboardContacted,
                        value: '48',
                        footer: UText.dashboardContactedDelta,
                        footerColor: UColors.green,
                      ),
                    ),
                    const SizedBox(width: USizes.sm),
                    Expanded(
                      child: DashboardStatCard(
                        icon: Icons.chat_bubble_outline,
                        title: UText.dashboardActiveChats,
                        value: '24',
                        footer: UText.dashboardUnread,
                        footerColor: UColors.error.withValues(alpha: 0.7),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            color: UColors.white,
            padding: const EdgeInsets.all(USizes.md),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(USizes.md),
                  decoration: BoxDecoration(
                    gradient: UAppGradient.secondaryGradient,
                    borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              UText.dashboardFindPerfectCandidates,
                              style: Theme.of(context).textTheme.titleMedium
                                  ?.copyWith(
                                    color: UColors.primaryColor,
                                    fontFamily: 'Arimo',
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            const SizedBox(height: USizes.sm),
                            Text(
                              UText.dashboardSearchCandidatesSubtitle,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: UColors.mutedColorDark,
                                    fontFamily: 'Arimo',
                                  ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          color: UColors.primaryColor,
                          borderRadius: BorderRadius.circular(
                            USizes.cardRadiusSm,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          splashRadius: USizes.iconMd,
                          padding: EdgeInsets.zero,
                          icon: const Icon(
                            Icons.search,
                            color: UColors.white,
                            size: USizes.iconMd,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: USizes.md),
                ShadowBox(
                  child: Column(
                    children: [
                      const DashboardSectionTitle(
                        title: UText.dashboardRecentlyContacted,
                        actionText: UText.dashboardViewAll,
                      ),
                      const SizedBox(height: USizes.sm),
                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: recentlyContactedCandidates.length,
                        itemBuilder: (context, index) {
                          final candidate = recentlyContactedCandidates[index];
                          return DashboardCandidateTile(
                            initials: candidate['initials']!,
                            name: candidate['name']!,
                            role: candidate['role']!,
                            rating: candidate['rating']!,
                          );
                        },
                        separatorBuilder: (context, index) =>
                            const SizedBox(height: USizes.sm),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: USizes.md),
                ShadowBox(
                  child: Column(
                    children: [
                      const DashboardSectionTitle(
                        title: UText.dashboardActivityOverview,
                      ),
                      const SizedBox(height: USizes.sm),
                      _activityRow(
                        context,
                        UText.dashboardCandidateSearches,
                        '89',
                      ),
                      const SizedBox(height: USizes.sm),
                      _activityRow(context, UText.dashboardMessagesSent, '45'),
                    ],
                  ),
                ),
                const SizedBox(height: USizes.md),
                Row(
                  children: [
                    Expanded(
                      child: DashboardQuickActionCard(
                        icon: Icons.search,
                        title: UText.dashboardSearchCandidates,
                        onTap: _onSearchCandidatesPressed,
                      ),
                    ),
                    SizedBox(width: USizes.sm),
                    Expanded(
                      child: DashboardQuickActionCard(
                        icon: Icons.group_add_outlined,
                        title: UText.dashboardSavedCandidates,
                        onTap: _onSavedCandidatesPressed,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _activityRow(BuildContext context, String label, String value) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: USizes.md,
        vertical: USizes.sm,
      ),
      decoration: BoxDecoration(
        color: UColors.lightGray.withValues(alpha: 0.35),
        borderRadius: BorderRadius.circular(USizes.cardRadiusMd),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: UColors.primaryColor,
                    fontFamily: 'Arimo',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  UText.dashboardLastSevenDays,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: UColors.gray,
                    fontFamily: 'Arimo',
                  ),
                ),
              ],
            ),
          ),
          Text(
            value,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: UColors.primaryColor,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }

  static void _onSearchCandidatesPressed() {
    // Add navigation or action logic here.
  }

  static void _onSavedCandidatesPressed() {
    // Add navigation or action logic here.
  }
}
