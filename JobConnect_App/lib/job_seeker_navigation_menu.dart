import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/job_seeker/home/home_screen.dart';
import 'package:jobconnect_app/features/job_seeker/home/controller/job_seeker_navigation_controller.dart';
import 'package:jobconnect_app/features/job_seeker/details/professional_details_screen.dart';

import 'package:jobconnect_app/features/job_seeker/profile/job_seeker_profile_screen.dart';
import 'package:jobconnect_app/features/job_seeker/chat/job_seeker_chat_screen.dart';

class JobSeekerNavigationMenu extends StatelessWidget {
  const JobSeekerNavigationMenu({super.key});

  static const List<_NavItemData> _items = [
    _NavItemData(label: UText.navHome, icon: Icons.home_outlined),
    _NavItemData(label: UText.navChat, icon: Icons.chat_bubble_outline),
    _NavItemData(label: UText.navProfile, icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    final JobSeekerNavigationController controller =
        Get.isRegistered<JobSeekerNavigationController>()
            ? Get.find<JobSeekerNavigationController>()
            : Get.put(JobSeekerNavigationController());

    return Scaffold(
      backgroundColor: UColors.white,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Expanded(
              child: Obx(() => _buildCurrentScreen(controller.currentIndex.value)),
            ),
            SafeArea(
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
                child: Obx(
                  () => Row(
                    children: List.generate(_items.length, (index) {
                      final item = _items[index];
                      final isActive = index == controller.currentIndex.value;

                      return Expanded(
                        child: GestureDetector(
                          onTap: () => controller.changeTab(index),
                          behavior: HitTestBehavior.opaque,
                          child: Center(
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 180),
                              padding: const EdgeInsets.symmetric(
                                horizontal: USizes.lg,
                                vertical: USizes.sm,
                              ),
                              decoration: BoxDecoration(
                                color: isActive
                                    ? UColors.primaryColor
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(
                                  USizes.cardRadiusLg,
                                ),
                                boxShadow: isActive
                                    ? [
                                        BoxShadow(
                                          color: UColors.black.withValues(
                                            alpha: 0.14,
                                          ),
                                          blurRadius: 10,
                                          offset: const Offset(0, 3),
                                        ),
                                      ]
                                    : null,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    item.icon,
                                    size: USizes.iconMd,
                                    color: isActive ? UColors.white : UColors.gray,
                                  ),
                                  const SizedBox(height: USizes.xs),
                                  Text(
                                    item.label,
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).textTheme.titleMedium
                                        ?.copyWith(
                                          color: isActive
                                              ? UColors.white
                                              : UColors.gray,
                                          fontFamily: 'Arimo',
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCurrentScreen(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        //return const ChatScreen();
      case 2:
        return const JobSeekerProfileScreen();
      default:
        return const HomeScreen();
    }
  }
}

class _Placeholder extends StatelessWidget {
  const _Placeholder({required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: UColors.primaryColor,
          fontFamily: 'Arimo',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _NavItemData {
  const _NavItemData({required this.label, required this.icon});

  final String label;
  final IconData icon;
}


