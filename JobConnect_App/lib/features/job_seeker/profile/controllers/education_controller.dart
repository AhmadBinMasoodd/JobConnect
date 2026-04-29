import 'package:get/get.dart';

class EducationController extends GetxController {
  static EducationController get instance => Get.find();

  final RxString selectedDegree = 'High School Diploma'.obs;
  final RxString selectedYear = ''.obs;
  final RxBool isCurrentlyStudying = false.obs;

  void toggleCurrentlyStudying(bool? value) {
    isCurrentlyStudying.value = value ?? false;
  }
}
