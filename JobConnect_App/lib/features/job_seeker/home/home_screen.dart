import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/cards/shadow_box.dart';
import 'package:jobconnect_app/common/widgets/icons/GradientIconBox.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/helpers/device_helpers.dart';
import 'package:jobconnect_app/features/job_seeker/home/controller/home_controller.dart';
import 'package:get/get.dart';
import 'widgets/upload_action_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: UDeviceHelpers.getScreenHeight(context) * 0.25,
              padding: UPadding.screenPadding,
              color: UColors.primaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome Back',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: UColors.white,
                      fontFamily: 'Arimo',
                    ),
                  ),
                  Text(
                    'John Doe',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: UColors.white,
                      fontFamily: 'Arimo',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwItems / 2),
                  Container(
                    padding: EdgeInsets.all(USizes.sm / 2),
                    decoration: BoxDecoration(
                      color: UColors.white.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: UColors.white.withValues(alpha: 0.8),
                      ),
                      boxShadow: [BoxShadow(blurRadius: 1)],
                    ),
                    child: Text(
                      'Senior Full Stack Developer',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium!.copyWith(color: UColors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: USizes.spaceBtwSections),
            Container(
              padding: UPadding.screenPadding,
              child: Column(
                children: [
                  ShadowBox(
                    child: Padding(
                      padding: EdgeInsets.all(USizes.sm / 1.5),
                      child: Row(
                        children: [
                          UGradientIconBox(
                            size: 54,
                            icon: Icon(
                              Icons.access_time,
                              color: UColors.primaryColor,
                            ),
                            gradient: UAppGradient.secondaryGradient,
                          ),
                          SizedBox(width: USizes.spaceBtwItems),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Availability Status',
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(fontFamily: 'Arimo'),
                              ),
                              SizedBox(height: USizes.spaceBtwItems / 3),
                              Text(
                                'Available for work',
                                style: Theme.of(context).textTheme.labelMedium!
                                    .copyWith(
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                      color: UColors.mutedColorDark,
                                    ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Obx(
                            () => Switch(
                              value: controller.isAvailable.value,
                              onChanged: (value) =>
                                  controller.isAvailable.value = value,
                              activeColor: UColors.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: USizes.spaceBtwSections),
                  ShadowBox(
                    child: Padding(
                      padding: EdgeInsets.all(USizes.sm / 1.5),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              UGradientIconBox(
                                size: 54,
                                icon: Icon(
                                  Icons.local_activity_sharp,
                                  color: UColors.primaryColor,
                                ),
                                gradient: UAppGradient.secondaryGradient,
                              ),
                              SizedBox(width: USizes.spaceBtwItems),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Profile Completeness',
                                    style: Theme.of(context).textTheme.titleMedium!
                                        .copyWith(fontFamily: 'Arimo'),
                                  ),
                                  SizedBox(height: USizes.spaceBtwItems / 3),
                                  Text(
                                    '85% Complete',
                                    style: Theme.of(context).textTheme.labelMedium!
                                        .copyWith(
                                          fontFamily: 'Arimo',
                                          fontWeight: FontWeight.w600,
                                          color: UColors.mutedColorDark,
                                        ),
                                  ),
                                ],
                              ),
                              const Spacer(),
                              Text(
                                '85%',
                                style: Theme.of(context).textTheme.titleMedium!
                                    .copyWith(
                                      fontFamily: 'Arimo',
                                      fontWeight: FontWeight.w600,
                                      color: UColors.primaryColor,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(height: USizes.spaceBtwItems,),
                          LinearProgressIndicator(
                            value: 0.85,
                            borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
                            backgroundColor: UColors.lightestGray,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              UColors.primaryColor,
                            ),
                            minHeight: 10,
                          ),
                          SizedBox(height: USizes.spaceBtwItems,),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: USizes.sm,
                              vertical: USizes.sm,
                            ),
                            decoration: BoxDecoration(
                              color: UColors.white,
                              borderRadius: BorderRadius.circular(
                                USizes.borderRadiusMd,
                              ),
                              border: Border.all(
                                color: UColors.lightGray.withValues(alpha: 0.5),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Complete these to boost your protile:',
                                  style: Theme.of(context).textTheme.labelLarge!
                                      .copyWith(
                                        color: UColors.mutedColorDark,
                                        fontFamily: 'Arimo',
                                      ),
                                ),
                                const SizedBox(height: USizes.spaceBtwItems),
                                Obx(
                                  () => UploadActionCard(
                                    title: 'Add CV/Resume',
                                    subtitle: controller.pickedFileName.value,
                                    icon: Icons.description_outlined,
                                    onUploadPressed: () =>
                                        controller.pickResume(),
                                  ),
                                ),
                                const SizedBox(height: USizes.spaceBtwItems),
                                Obx(
                                  () => UploadActionCard(
                                    title: 'Add Portfolio Project',
                                    subtitle:
                                        controller.pickedProjectName.value,
                                    icon: Icons.folder_open_outlined,
                                    onUploadPressed: () =>
                                        controller.pickProject(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
