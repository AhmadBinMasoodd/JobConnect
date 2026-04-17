import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsAboutController extends GetxController {
  final TextEditingController aboutController = TextEditingController();
  final RxInt aboutLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    aboutController.addListener(_updateLength);
  }

  void _updateLength() {
    aboutLength.value = aboutController.text.length;
  }

  @override
  void onClose() {
    aboutController.removeListener(_updateLength);
    aboutController.dispose();
    super.onClose();
  }
}

