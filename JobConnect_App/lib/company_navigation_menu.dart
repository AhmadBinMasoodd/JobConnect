import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/dashboard/company_dasboard.dart';
import 'package:jobconnect_app/features/company/dashboard/controller/company_navigation_controller.dart';
import 'package:jobconnect_app/features/company/find/find_screen.dart';
import 'package:jobconnect_app/features/company/profile/company_profile_screen.dart';

import 'features/company/chat/chat_screen.dart';

class CompanyNavigationMenu extends StatelessWidget {
  const CompanyNavigationMenu({super.key});

  static const List<_NavItemData> _items = [
    _NavItemData(label: UText.navHome, icon: Icons.home_outlined),
    _NavItemData(label: UText.navFind, icon: Icons.search),
    _NavItemData(label: UText.navChat, icon: Icons.chat_bubble_outline),
    _NavItemData(label: UText.navProfile, icon: Icons.person_outline),
  ];

  @override
  Widget build(BuildContext context) {
    final CompanyNavigationController controller =
        Get.isRegistered<CompanyNavigationController>()
        ? Get.find<CompanyNavigationController>()
        : Get.put(CompanyNavigationController());

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
        return const CompanyDashboardScreen();
      case 1:
        return const CompanyFindScreen();
      case 2:
        return const ChatScreen();
      case 3:
        return const CompanyProfileScreen();
      default:
        return const CompanyDashboardScreen();
    }
  }
}

class _TabPlaceholder extends StatelessWidget {
  const _TabPlaceholder({required this.message});

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
