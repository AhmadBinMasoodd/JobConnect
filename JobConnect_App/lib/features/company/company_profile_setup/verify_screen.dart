import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/common/style/padding.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/layout/screen_header.dart';
import 'package:jobconnect_app/core/constant/app_gradient.dart';
import 'package:jobconnect_app/core/constant/colors.dart';
import 'package:jobconnect_app/core/constant/size.dart';
import 'package:jobconnect_app/core/constant/text.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/document_security_info.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/registration_progress_header.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/verify_action_buttons.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/verify_document_section.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/verify_warning_banner.dart';
import 'package:jobconnect_app/features/company/verification/pending_verification_screen.dart';

import '../../../common/widgets/cards/shadow_box.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  Future<void> _pickDocument() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: const ['png', 'jpg', 'jpeg', 'pdf'],
      allowMultiple: false,
    );

    if (result != null && result.files.isNotEmpty) {
      final file = result.files.single;
      Get.snackbar(
        'Document Selected',
        file.name,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          UText.verifyCompanyTitle,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: UColors.white,
                fontFamily: 'Arimo',
              ),
        ),
      ),
      body: Column(
        children: [
          const RegistrationProgressHeader(currentStep: 4),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Header section: icon, title, and short subtitle for the step.
                  ScreenHeader(
                    size: USizes.iconMd * 3,
                    gradient: UAppGradient.primaryGradient,
                    icon: const Icon(
                      Icons.sticky_note_2_outlined,
                      color: UColors.white,
                    ),
                    titleText: UText.verifyCompanyTitle,
                    subtitleText: UText.verifyCompanySubtitle,
                    child: Column(
                      children: [
                        const VerifyWarningBanner(
                          message: UText.verifyProfileReviewNote,
                        ),
                        const SizedBox(height: USizes.spaceBtwSections),
                        // Document cards are kept inside one shadow box to match the design.
                        ShadowBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              VerifyDocumentSection(
                                title: UText.businessLicenseLabel,
                                subtitle: UText.uploadBusinessDocumentLabel,
                                buttonTitle: UText.clickToUploadDocument,
                                buttonSubtitle: UText.uploadFileTypesHint,
                                onTap: _pickDocument,
                              ),
                              const SizedBox(height: USizes.spaceBtwSections),
                              VerifyDocumentSection(
                                title: 'Any Official Document *',
                                subtitle: 'Upload official identification document',
                                buttonTitle: UText.clickToUploadDocument,
                                buttonSubtitle: UText.uploadFileTypesHint,
                                onTap: _pickDocument,
                              ),
                              const DocumentSecurityInfo(
                                title: 'All documents are secure',
                                subtitle:
                                    'Your documents are encrypted and only accessible to our verification team.',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Footer actions: submit verification or go back.
                  const SizedBox(height: USizes.spaceBtwItems),
                  Padding(
                    padding: UPadding.screenPadding,
                    child: VerifyActionButtons(
                      onSubmit: () =>Get.to(()=>PendingVerificationScreen()),
                      onBack: () => Get.back(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
