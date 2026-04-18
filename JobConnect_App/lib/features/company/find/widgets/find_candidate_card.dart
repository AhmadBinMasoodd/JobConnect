import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/find/find_candidate_data.dart';

class FindCandidateCard extends StatelessWidget {
  const FindCandidateCard({
    super.key,
    required this.data,
  });

  final FindCandidateData data;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: USizes.md),
      padding: const EdgeInsets.all(USizes.md),
      decoration: BoxDecoration(
        color: UColors.white,
        borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
        border: Border.all(color: UColors.lightGray),
        boxShadow: [
          BoxShadow(
            color: UColors.black.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: UColors.secondaryColor,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    data.initials,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.primaryColor,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: USizes.sm),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.name,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: UColors.primaryColor,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      data.role,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: UColors.gray,
                        fontFamily: 'Arimo',
                      ),
                    ),
                    const SizedBox(height: USizes.xs),
                    Row(
                      children: [
                        const Icon(Icons.star, size: 14, color: UColors.warning),
                        const SizedBox(width: 2),
                        Text(
                          data.rating,
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: UColors.gray,
                                fontFamily: 'Arimo',
                              ),
                        ),
                        const SizedBox(width: USizes.sm),
                        Icon(
                          Icons.location_on_outlined,
                          size: 14,
                          color: UColors.gray.withValues(alpha: 0.8),
                        ),
                        const SizedBox(width: 2),
                        Flexible(
                          child: Text(
                            data.location,
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(
                                  color: UColors.gray,
                                  fontFamily: 'Arimo',
                                ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Icon(
                data.bookmarked ? Icons.bookmark : Icons.bookmark_border,
                color: data.bookmarked ? UColors.primaryColor : UColors.gray,
                size: USizes.iconSm,
              ),
            ],
          ),
          const SizedBox(height: USizes.sm),
          Row(
            children: [
              Text(
                UText.findExperienceLabel,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: UColors.gray,
                  fontFamily: 'Arimo',
                ),
              ),
              const SizedBox(width: 2),
              Text(
                data.experience,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: UColors.primaryColor,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: USizes.md),
              const Icon(Icons.circle, size: 8, color: UColors.green),
              const SizedBox(width: 4),
              Text(
                data.availability,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: UColors.primaryColor,
                  fontFamily: 'Arimo',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: USizes.sm),
          Wrap(
            spacing: USizes.xs,
            runSpacing: USizes.xs,
            children: data.skills
                .map(
                  (skill) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3F4F6),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      skill,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: UColors.gray,
                        fontFamily: 'Arimo',
                        fontSize: 11,
                      ),
                    ),
                  ),
                )
                .toList(growable: false),
          ),
          const SizedBox(height: USizes.sm),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: UColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          USizes.borderRadiusMd,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chat_bubble_outline,
                      size: USizes.iconSm,
                      color: UColors.white,
                    ),
                    label: Text(
                      UText.findContact,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.white,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: USizes.sm),
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide.none,
                      backgroundColor: const Color(0xFFF3F4F6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          USizes.borderRadiusMd,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      UText.findViewProfile,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: UColors.gray,
                        fontFamily: 'Arimo',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

