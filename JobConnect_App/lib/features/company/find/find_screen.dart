import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'find_candidate_data.dart';
import 'widgets/find_candidate_card.dart';
import 'widgets/find_header_section.dart';

class CompanyFindScreen extends StatelessWidget {
  const CompanyFindScreen({super.key});

  static const List<String> _filters = [
    UText.findFilterAll,
    UText.findFilterDevelopers,
    UText.findFilterDesigners,
    UText.findFilterMarketing,
  ];

  static const List<FindCandidateData> _candidates = [
    FindCandidateData(
      initials: 'JD',
      name: 'John Doe',
      role: 'Senior Full Stack Developer',
      rating: '4.8 (24)',
      location: 'New York, USA',
      experience: '5+ years',
      availability: UText.findAvailableNow,
      skills: ['React', 'Node.js', 'TypeScript', 'AWS'],
      bookmarked: false,
    ),
    FindCandidateData(
      initials: 'SW',
      name: 'Sarah Wilson',
      role: 'UI/UX Designer',
      rating: '4.9 (31)',
      location: 'London, UK',
      experience: '4+ years',
      availability: UText.findAvailableNow,
      skills: ['Figma', 'Adobe XD', 'UI Design', 'Prototyping'],
      bookmarked: true,
    ),
    FindCandidateData(
      initials: 'MJ',
      name: 'Mike Johnson',
      role: 'DevOps Engineer',
      rating: '4.7 (16)',
      location: 'Berlin, Germany',
      experience: '6+ years',
      availability: UText.findInTwoWeeks,
      skills: ['Docker', 'Kubernetes', 'AWS', 'CI/CD'],
      bookmarked: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFF3F4F6),
      child: Column(
        children: [
          FindHeaderSection(filters: _filters),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(
                USizes.md,
                USizes.md,
                USizes.md,
                USizes.xl,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    UText.findCandidatesCount,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.gray,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: USizes.sm),
                  ..._candidates
                      .map((candidate) => FindCandidateCard(data: candidate)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

