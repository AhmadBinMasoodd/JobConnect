import 'package:get/get.dart';

class WorkExperienceController extends GetxController {
  static WorkExperienceController get instance => Get.find();

  final Rx<bool?> hasExperience = Rx<bool?>(null);

  void setExperience(bool value) {
    hasExperience.value = value;
  }
}
