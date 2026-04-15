
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobconnect_app/core/theme/theme.dart';
import 'package:jobconnect_app/features/auth/presentation/pages/landing_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobConnect',
      theme: UAppTheme.lightTheme,
      home: const LandingPage(),
    );
  }

}