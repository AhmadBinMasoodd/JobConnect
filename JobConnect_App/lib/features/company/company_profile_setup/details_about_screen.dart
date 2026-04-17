import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/features/company/company_profile_setup/widgets/registration_progress_header.dart';


class DetailsAboutScreen extends StatelessWidget {
  const DetailsAboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(
        showBackArrow: true,
        title: Text(
          'Details About Your Company',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: [
          // Progress header for step 2 (About)
          const RegistrationProgressHeader(currentStep: 1),
          // Rest of the form content goes here
          Expanded(
            child: Container(
              // Add your form content here
            ),
          ),
        ],
      ),
    );
  }
}
