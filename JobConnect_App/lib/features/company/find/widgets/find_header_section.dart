import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'find_filter_chip.dart';

class FindHeaderSection extends StatelessWidget {
  const FindHeaderSection({
    super.key,
    required this.filters,
  });

  final List<String> filters;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(
        USizes.md,
        USizes.xl,
        USizes.md,
        USizes.md,
      ),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [UColors.primaryColor, UColors.primaryColorDark],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(USizes.cardRadiusLg),
          bottomRight: Radius.circular(USizes.cardRadiusLg),
        ),
        boxShadow: [
          BoxShadow(
            color: UColors.black.withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            UText.findWorkersTitle,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: UColors.white,
              fontFamily: 'Arimo',
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: USizes.md),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: UText.findSearchHint,
                    hintStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: UColors.gray,
                      fontFamily: 'Arimo',
                    ),
                    prefixIcon: const Icon(Icons.search, color: UColors.gray),
                    filled: true,
                    fillColor: UColors.white,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: USizes.md,
                      vertical: USizes.sm,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(USizes.borderRadiusMd),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: USizes.sm),
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: UColors.secondaryColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(
                  Icons.location_on_outlined,
                  size: USizes.iconSm,
                  color: UColors.primaryColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: USizes.md),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(filters.length, (index) {
                final bool isSelected = index == 0;
                return Padding(
                  padding: const EdgeInsets.only(right: USizes.sm),
                  child: FindFilterChip(
                    label: filters[index],
                    isSelected: isSelected,
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

