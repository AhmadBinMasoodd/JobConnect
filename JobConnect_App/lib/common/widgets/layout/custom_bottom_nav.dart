import 'package:flutter/material.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  final int currentIndex;
  final ValueChanged<int> onTap;

  static const List<String> _labels = [
    UText.navHome,
    UText.navFind,
    UText.navChat,
    UText.navProfile,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        decoration: const BoxDecoration(
          color: UColors.white,
          border: Border(
            top: BorderSide(color: UColors.lightGray, width: 1),
          ),
        ),
        padding: const EdgeInsets.fromLTRB(
          USizes.md,
          USizes.sm,
          USizes.md,
          USizes.sm,
        ),
        child: Row(
          children: List.generate(_labels.length, (index) {
          final isActive = index == currentIndex;

          return Expanded(
            child: GestureDetector(
              onTap: () => onTap(index),
              behavior: HitTestBehavior.opaque,
              child: Center(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 180),
                  padding: const EdgeInsets.symmetric(
                    horizontal: USizes.lg,
                    vertical: USizes.md,
                  ),
                  decoration: BoxDecoration(
                    color: isActive ? UColors.primaryColor : Colors.transparent,
                    borderRadius: BorderRadius.circular(USizes.cardRadiusLg),
                    boxShadow: isActive
                        ? [
                            BoxShadow(
                              color: UColors.black.withValues(alpha: 0.12),
                              blurRadius: 10,
                              offset: const Offset(0, 3),
                            ),
                          ]
                        : null,
                  ),
                  child: Text(
                    _labels[index],
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      color: isActive ? UColors.white : UColors.gray,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          );
          }),
        ),
      ),
    );
  }
}
