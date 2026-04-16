import 'package:flutter/material.dart';
import 'package:jobconnect_app/common/widgets/appbar/appbar.dart';
import 'package:jobconnect_app/common/widgets/appbar/custom_title_bar.dart';
import 'package:jobconnect_app/core/constant/text.dart';

import 'widgets/verify_code_content.dart';

class VerifyCodeScreen extends StatelessWidget {
  const VerifyCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: UAppBar(showBackArrow: true),
      body: const Column(
        children: [
          // Static title area for auth flow consistency.
          CustomTitleBar(title: UText.verifyCode),
          // Main verification content is split into dedicated widgets for clarity.
          Expanded(child: VerifyCodeContent()),
        ],
      ),
    );
  }
}
